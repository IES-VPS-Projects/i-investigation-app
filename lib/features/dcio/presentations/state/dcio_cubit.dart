// ignore: depend_on_referenced_packages
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart'; 
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';
import 'package:iinvestigation/features/dcio/data/models/users/users.dart';
import 'package:iinvestigation/features/dcio/domain/usecases/get_cases.dart';

part 'dcio_state.dart';
part 'dcio_cubit.freezed.dart';
part 'dcio_cubit.g.dart';

class DcioCubit extends Cubit<DcioState> {
  final GetOccurences _getOccurences;
  DcioCubit(this._getOccurences)
      : super(const DcioState.initial(
            payload: DcioStatePayload(error: null, page: null)));

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
}
