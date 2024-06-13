import 'package:dartz/dartz.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/features/dcio/data/models/new_case_file/new_case_file.dart';
import 'package:iinvestigation/features/dcio/domain/repository/dcio_repository.dart';

class UpdateOfficers extends Usecase<dynamic, Map> {
  final DcioRepository _dcioRepository;
  UpdateOfficers(this._dcioRepository);
  @override
  Future<Either<NewCaseFile, UIError>> call(Map params) async {
    try {
      var response = await _dcioRepository.updateCaseOfficers(payload: params);

      return Left(response);
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
