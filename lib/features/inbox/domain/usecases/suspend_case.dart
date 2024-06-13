import 'package:dartz/dartz.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart'; 
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';

class SuspendCase extends Usecase<dynamic, int> {
  final InboxRepository _inboxRepository;
  SuspendCase(this._inboxRepository);
  @override
  Future<Either<dynamic, UIError>> call(int params) async {
    try {
      var response = await _inboxRepository.suspendCaseFile(id: params);
      return Left(response);
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
