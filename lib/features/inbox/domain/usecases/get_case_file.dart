import 'package:dartz/dartz.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/features/inbox/data/models/case_file/case_file.dart';
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';

class CaseFileUseCase extends Usecase<CaseFile, int>{
 final InboxRepository _inboxRepository;
  CaseFileUseCase(this._inboxRepository);
  @override
  Future<Either<CaseFile, UIError>> call(int params) async {
    try {
      var response  = await _inboxRepository.getCaseFile(id: params );
      return Left(response);
       
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }

}