import 'package:dio/src/form_data.dart';
import 'package:iinvestigation/features/inbox/data/data_source/inbox_data_source.dart';
import 'package:iinvestigation/features/inbox/data/models/case_file_suspect/case_file.dart';
import 'package:iinvestigation/features/inbox/data/models/case_file_suspect/case_file_suspect.dart';
import 'package:iinvestigation/features/inbox/data/models/iprs_model/iprs_model.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';

import 'package:iinvestigation/features/inbox/data/models/case_file/case_file.dart' as caseFIle;
class InboxRepositoryImpl implements InboxRepository {
  final InboxDataSource _inboxDataSource;
  InboxRepositoryImpl(this._inboxDataSource);
  @override
  Future<List<OpenCases>> getOpenCases() async {
    return await _inboxDataSource.getOpenCases();
  }

  @override
  Future<IprsModel> searchIPrs({required String idNo}) async {
    return await _inboxDataSource.searchIPrs(idNo: idNo);
  }

  @override
  Future<CaseFileSuspect> createSuspect({required FormData fd}) async {
    return await _inboxDataSource.createSuspect(fd: fd);
  }

  @override
  Future<caseFIle.CaseFile> getCaseFile({required int id}) async {
    return await _inboxDataSource.getCaseFile(id: id);
  }
}
