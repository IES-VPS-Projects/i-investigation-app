import 'package:iinvestigation/features/inbox/data/models/iprs_model/iprs_model.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

abstract class InboxRepository {
  Future<List<OpenCases>> getOpenCases();
  Future<IprsModel> searchIPrs({required String idNo});
}
