import 'package:dio/dio.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/auth/data/data_source/auth_data_source.dart';
import 'package:iinvestigation/features/auth/data/models/auth_response_model/auth_response_model.dart';
import 'package:iinvestigation/features/auth/domain/repository/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDataSource;
  AuthRepositoryImpl(this._authDataSource);

  @override
  Future<AuthResponseModel> login(FormData params) async {
    var response = await _authDataSource.login(params);
    logger.i(response);
    return response;
  }
}
