import 'package:dartz/dartz.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';

class GetOpenCases extends Usecase<List<OpenCases>, int?> {
  final InboxRepository _inboxRepository;
  GetOpenCases(this._inboxRepository);
  @override
  Future<Either<List<OpenCases>, UIError>> call(int? params) async {
    try {
      var response = await _inboxRepository.getOpenCases();
      return Left(response);
    } on NetworkFailure catch (e, s) { 
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
