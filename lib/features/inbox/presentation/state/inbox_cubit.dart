import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:iinvestigation/features/inbox/data/models/case_file/case_file.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/create_case_materials.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/create_case_notes.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/create_summary.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/create_suspect.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/create_witness.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/get_case_file.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/get_open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/get_penal_code.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/search_iprs.dart';

import '../../data/models/iprs_model/iprs_model.dart';

import 'package:iinvestigation/features/inbox/data/models/case_file/case_file.dart'
    as caseFIle;

import '../../data/models/penal_code_response/penal_code_response.dart';
import '../../domain/usecases/create_offence.dart';

part 'inbox_state.dart';
part 'inbox_cubit.freezed.dart';
part 'inbox_cubit.g.dart';

class InboxCubit extends Cubit<InboxState> {
  final CreateOffence _createOffence;
  final GetPenalCode _getPenalCode;
  final CreateCaseMaterial _caseMaterial;
  final CreateCaseNote _caseNote;
  final CaseFileUseCase _caseFileUseCase;
  final CreateWitness _createWitness;
  final GetOpenCases _getOpenCases;
  final SearchIPRS _searchIPRS;
  final CreateSuspect _createSuspect;
  final CreateSummary _createSummary;

  InboxCubit(
    this._createSummary,
      this._createOffence,
      this._getPenalCode,
      this._caseMaterial,
      this._caseNote,
      this._createWitness,
      this._caseFileUseCase,
      this._getOpenCases,
      this._searchIPRS,
      this._createSuspect)
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

  Future<void> createWitness({required FormData fd}) async {
    emit(InboxState.loading(payload: state.payload.copyWith()));

    var results = await _createWitness(fd);
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
      print(l);
      emit(InboxState.caseFile(payload: state.payload.copyWith(caseFile: l)));
    }, (r) {
      emit(InboxState.errorIPRS(
          payload: state.payload.copyWith(error: r.message)));
    });
  }

  void setAudioPath({required String path}) {
    emit(InboxState.caseFile(
        payload: state.payload.copyWith(recordingPath: path)));
  }

  Future<void> createCaseNote({required FormData fd}) async {
    emit(InboxState.loading(payload: state.payload.copyWith()));

    var results = await _caseNote(fd);
    results.fold((l) {
      print(l);
      emit(InboxState.caseFile(payload: state.payload.copyWith()));
    }, (r) {
      emit(InboxState.errorIPRS(
          payload: state.payload.copyWith(error: r.message)));
    });
  }

  Future<void> createMaterial({required FormData fd}) async {
    emit(InboxState.loading(payload: state.payload.copyWith()));

    var results = await _caseMaterial(fd);
    results.fold((l) {
      print(l);
      emit(InboxState.caseFile(payload: state.payload.copyWith()));
    }, (r) {
      emit(InboxState.errorIPRS(
          payload: state.payload.copyWith(error: r.message)));
    });
  }

  Future<void> getPenalCodes() async {
    emit(InboxState.loading(payload: state.payload.copyWith()));

    var results = await _getPenalCode(null);
    results.fold((l) {
      print(l);
      emit(InboxState.caseFile(payload: state.payload.copyWith(penalCodes: l)));
    }, (r) {
      emit(InboxState.errorIPRS(
          payload: state.payload.copyWith(error: r.message)));
    });
  }

  Future<void> createOffence({required FormData payload}) async {
    emit(InboxState.loading(payload: state.payload.copyWith()));

    var results = await _createOffence(payload);
    results.fold((l) {
      print(l);
      emit(InboxState.caseFile(payload: state.payload.copyWith()));
    }, (r) {
      emit(InboxState.errorIPRS(
          payload: state.payload.copyWith(error: r.message)));
    });
  }
  Future<void> createSummary({required FormData payload}) async {
    
    var results = await _createSummary(payload);
    
  }
}
