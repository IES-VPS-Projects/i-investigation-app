import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:iinvestigation/features/new_case/domain/usecase/new_case_usecase.dart';

part 'new_case_state.dart';
part 'new_case_cubit.freezed.dart';
part 'new_case_cubit.g.dart';

class NewCaseCubit extends Cubit<NewCaseState> {
  final NewCaseUseCase _newCaseUseCase;
  NewCaseCubit(this._newCaseUseCase)
      : super(const NewCaseState.initial(
          payload: NewCaseStatePayload(error: null, page: null),
        ));

  Future<void> newCase({required FormData fd}) async {
    emit(NewCaseState.loading(payload: state.payload.copyWith()));
    var results = await _newCaseUseCase(fd);
    results.fold((l) {
      emit(NewCaseState.createdCase(payload: state.payload.copyWith()));
    }, (r) {
      emit(NewCaseState.error(
          payload: state.payload.copyWith(error: r.message)));
    });
  }
}
