// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:iinvestigation/core/data/datasources/local_storage_data_source.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/auth/data/models/auth_response_model/auth_response_model.dart';
import 'package:iinvestigation/features/auth/domain/usecases/login.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';
part 'auth_cubit.g.dart';

class AuthCubit extends Cubit<AuthState> {
  final Login _login;
  AuthCubit(this._login)
      : super(const AuthState.initial(
          payload: AuthStatePayload(error: null, page: null, user: null),
        ));

  Future<void> login(FormData payload) async {
    late LocalStorage localStorage = LocalStorage();
    localStorage.initialize();
    emit(AuthState.loading(payload: state.payload.copyWith()));
    var results = await _login(payload);
    results.fold((l) {
      logger.t(l);
      logger.t('store');
      localStorage.storeData('name', l.data!.name!);
      localStorage.storeData('service_Number', l.data!.serviceNumber!);
      localStorage.storeData('token', l.token!);

      emit(AuthState.login(payload: state.payload.copyWith(user: l)));
    }, (r) {
      emit(AuthState.error(payload: state.payload.copyWith(error: r.message)));
    });
  }
}
