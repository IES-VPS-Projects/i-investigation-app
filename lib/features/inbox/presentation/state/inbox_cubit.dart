import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/get_open_cases.dart';

part 'inbox_state.dart';
part 'inbox_cubit.freezed.dart';
part 'inbox_cubit.g.dart';

class InboxCubit extends Cubit<InboxState> {
  final GetOpenCases _getOpenCases;

  InboxCubit(this._getOpenCases)
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
}
