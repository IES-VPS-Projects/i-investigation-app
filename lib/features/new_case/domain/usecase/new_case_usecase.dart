import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/features/new_case/domain/repository/new_case_repository.dart';

class NewCaseUseCase extends Usecase<dynamic, FormData> {
  final NewCaseRepository _caseRepository;
  NewCaseUseCase(this._caseRepository);
  @override
  Future<Either<dynamic, UIError>> call(FormData params) async {
    try {
      var results = _caseRepository.createCase(fd: params);

      return Left(results);
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
