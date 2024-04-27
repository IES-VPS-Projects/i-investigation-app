import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';

class CreateSuspect extends Usecase<dynamic, FormData> {
  final InboxRepository _inboxRepository;
  CreateSuspect(this._inboxRepository);
  @override
  Future<Either<dynamic, UIError>> call(FormData params) async {
    try {
      var response = await _inboxRepository.createSuspect(fd: params);
      return Left(response);
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
