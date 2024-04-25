import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/get_open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/search_iprs.dart';

import '../../data/models/iprs_model/iprs_model.dart';

part 'inbox_state.dart';
part 'inbox_cubit.freezed.dart';
part 'inbox_cubit.g.dart';

class InboxCubit extends Cubit<InboxState> {
  final GetOpenCases _getOpenCases;
  final SearchIPRS _searchIPRS;

  InboxCubit(this._getOpenCases, this._searchIPRS)
      : super(const InboxState.initial(
          payload: InboxStatePayload(error: null, page: null),
        ));

  Future<void> getAllCases() async {
    emit(InboxState.loading(payload: state.payload.copyWith()));

    var results = await _getOpenCases(null);
    results.fold((l) {
      emit(InboxState.cases(payload: state.payload.copyWith(cases: l)));
    }, (r) {
      emit(InboxState.error(payload: state.payload.copyWith(error: r.message)));
    });
  }

  Future<void> getIPRS({required String idNo}) async {
    emit(InboxState.loadingIPRS(payload: state.payload.copyWith()));

    var results = await _searchIPRS(idNo);
    results.fold((l) {
      emit(InboxState.doneIPRS(payload: state.payload.copyWith(iprsModel: l)));
    }, (r) {
      emit(InboxState.errorIPRS(
          payload: state.payload.copyWith(error: r.message)));
    });
  }
}
