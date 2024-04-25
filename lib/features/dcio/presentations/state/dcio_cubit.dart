// ignore: depend_on_referenced_packages
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/dcio/data/models/new_case_file/new_case_file.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';
import 'package:iinvestigation/features/dcio/data/models/users/users.dart';
import 'package:iinvestigation/features/dcio/domain/usecases/create_case_file.dart';
import 'package:iinvestigation/features/dcio/domain/usecases/get_cases.dart';
import 'package:iinvestigation/features/dcio/domain/usecases/get_users.dart';

part 'dcio_state.dart';
part 'dcio_cubit.freezed.dart';
part 'dcio_cubit.g.dart';

class DcioCubit extends Cubit<DcioState> {
  final GetOccurences _getOccurences;
  final Getusers _getusers;
  final CreateCaseFile _createCaseFile;
  DcioCubit(this._getOccurences, this._getusers, this._createCaseFile)
      : super(const DcioState.initial(
            payload: DcioStatePayload(error: null, page: null, officers: [])));

  Future<void> getOccurences() async {
    emit(DcioState.loading(payload: state.payload.copyWith()));
    var results = await _getOccurences(null);
    results.fold((l) {
      emit(
          DcioState.occurences(payload: state.payload.copyWith(occurences: l)));
    },
        (r) => emit(DcioState.error(
            payload: state.payload.copyWith(error: r.message))));
  }

  Future<void> createCaseFile({required Map occurenceId}) async {
    emit(DcioState.loading(payload: state.payload.copyWith()));

    var results = await _createCaseFile(occurenceId);
    logger.i(occurenceId);
    results.fold((l) {
      emit(DcioState.casefile(
          payload: state.payload.copyWith(caseFile: l, officers: [])));
    },
        (r) => emit(DcioState.error(
            payload: state.payload.copyWith(error: r.message))));
  }

  Future<void> getUsers() async {
    emit(DcioState.loading(payload: state.payload.copyWith()));
    var results = await _getusers(null);
    results.fold((l) {
      emit(DcioState.occurences(payload: state.payload.copyWith(users: l)));
    },
        (r) => emit(DcioState.error(
            payload: state.payload.copyWith(error: r.message))));
  }

  Future<void> addOffiersToCase(Users officer) async {
    List<Users> ii = [...?state.payload.officers];
    ii.add(officer);
    emit(DcioState.occurences(payload: state.payload.copyWith(officers: ii)));
  }

  Future<void> removeOffiersToCase(Users officer) async {
    List<Users> ii = [...?state.payload.officers];
    ii.remove(officer);
    emit(DcioState.occurences(payload: state.payload.copyWith(officers: ii)));
  }
}
