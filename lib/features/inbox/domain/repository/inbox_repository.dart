import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

abstract class InboxRepository {
  Future<List<OpenCases>> getOpenCases();
}
