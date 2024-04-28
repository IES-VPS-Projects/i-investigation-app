import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/features/inbox/data/models/new_witness_response/new_witness_response.dart';
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';

class CreateWitness extends Usecase<NewWitnessResponse, FormData> {
  final InboxRepository _inboxRepository;
  CreateWitness(this._inboxRepository);
  @override
  Future<Either<NewWitnessResponse, UIError>> call(FormData params) async {
    try {
      var response = await _inboxRepository.createWitness(fd: params);
      return Left(response);
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
