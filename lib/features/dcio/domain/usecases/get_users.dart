import 'package:dartz/dartz.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/features/dcio/data/models/users/users.dart';
import 'package:iinvestigation/features/dcio/domain/repository/dcio_repository.dart';

class Getusers extends Usecase<List<Users>, int?> {
  final DcioRepository _dcioRepository;
  Getusers(this._dcioRepository);
  @override
  Future<Either<List<Users>, UIError>> call(int? params) async {
    try {
      var response = await _dcioRepository.getUsers();
      return Left(response);
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
