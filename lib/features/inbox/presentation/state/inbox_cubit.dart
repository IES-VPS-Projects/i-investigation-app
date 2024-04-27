import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:iinvestigation/features/inbox/data/models/case_file/case_file.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/create_suspect.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/get_case_file.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/get_open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/search_iprs.dart';

import '../../data/models/iprs_model/iprs_model.dart';

part 'inbox_state.dart';
part 'inbox_cubit.freezed.dart';
part 'inbox_cubit.g.dart';

class InboxCubit extends Cubit<InboxState> {
  final CaseFileUseCase _caseFileUseCase;
  final GetOpenCases _getOpenCases;
  final SearchIPRS _searchIPRS;
  final CreateSuspect _createSuspect;

  InboxCubit( this._caseFileUseCase, this._getOpenCases, this._searchIPRS, this._createSuspect)
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
      Future.delayed(Duration(seconds: 3), () {
        emit(
            InboxState.doneIPRS(payload: state.payload.copyWith(iprsModel: l)));
      });
    }, (r) {
      emit(InboxState.errorIPRS(
          payload: state.payload.copyWith(error: r.message)));
    });
  }

  Future<void> createSuspect({required FormData fd}) async {
    emit(InboxState.loading(payload: state.payload.copyWith()));

    var results = await _createSuspect(fd);
    results.fold((l) {
      emit(InboxState.createdSuspect(payload: state.payload.copyWith()));
    }, (r) {
      emit(InboxState.errorIPRS(
          payload: state.payload.copyWith(error: r.message)));
    });
  }
  Future<void> getCaseFile({required int fd}) async {
    emit(InboxState.loading(payload: state.payload.copyWith()));

    var results = await _caseFileUseCase(fd);
    results.fold((l) {
      emit(InboxState.caseFile(payload: state.payload.copyWith(caseFile: l)));
    }, (r) {
      emit(InboxState.errorIPRS(
          payload: state.payload.copyWith(error: r.message)));
    });
  }
}
