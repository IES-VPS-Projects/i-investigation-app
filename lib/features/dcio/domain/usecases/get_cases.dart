import 'package:dartz/dartz.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';
import 'package:iinvestigation/features/dcio/domain/repository/dcio_repository.dart';

class GetOccurences extends Usecase<List<Occurence>, int?> {
  final DcioRepository _dcioRepository;
  GetOccurences(this._dcioRepository);
  @override
  Future<Either<List<Occurence>, UIError>> call(int? params) async {
    try {
      print("getting occurences");
      var response = await _dcioRepository.getOccurences();
      return Left(response);
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
