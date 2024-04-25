import 'package:iinvestigation/features/inbox/data/data_source/inbox_data_source.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';

class InboxRepositoryImpl implements InboxRepository {
  final InboxDataSource _inboxDataSource;
  InboxRepositoryImpl(this._inboxDataSource);
  @override
  Future<List<OpenCases>> getOpenCases() async {
    return await _inboxDataSource.getOpenCases();
  }
}
