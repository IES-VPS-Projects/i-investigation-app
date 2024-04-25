import 'package:dartz/dartz.dart';
import 'package:iinvestigation/core/domain/usecase/failures.dart';
import 'package:iinvestigation/core/domain/usecase/usecase_typedefs.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/features/inbox/data/models/iprs_model/iprs_model.dart';
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';

class SearchIPRS extends Usecase<IprsModel, String> {
  final InboxRepository _inboxRepository;
  SearchIPRS(this._inboxRepository);
  @override
  Future<Either<IprsModel, UIError>> call(String params) async {
    try {
      var response = await _inboxRepository.searchIPrs(idNo: params);
      return Left(response);
    } on NetworkFailure catch (e, s) {
      return Right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
