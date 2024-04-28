import 'package:dartz/dartz.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/features/inbox/data/models/penal_code_response/penal_code_response.dart';
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';

class GetPenalCode extends Usecase<List<PenalCodeResponse>, int?> {
  final InboxRepository _inboxRepository;
  GetPenalCode(this._inboxRepository);
  @override
  Future<Either<List<PenalCodeResponse>, UIError>> call(int? params) async {
    try {
      var response = await _inboxRepository.getPenalCodes();
      return Left(response);
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
