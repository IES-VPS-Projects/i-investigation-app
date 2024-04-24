import 'package:dartz/dartz.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/auth/data/models/auth_response_model/auth_response_model.dart';
import 'package:iinvestigation/features/auth/domain/repository/auth_repo.dart';

class Login extends Usecase<AuthResponseModel, Map> {
  final AuthRepository _authRepository;
  Login(this._authRepository);

  @override
  Future<Either<AuthResponseModel, UIError>> call(Map params) async {
    try {
      var response = await _authRepository.login(params);
      logger.t("trace $response");
      return Left(response);
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
