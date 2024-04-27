import 'package:dio/dio.dart'; 
import 'package:iinvestigation/features/inbox/data/models/iprs_model/iprs_model.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

import '../../data/models/case_file_suspect/case_file_suspect.dart';

import 'package:iinvestigation/features/inbox/data/models/case_file/case_file.dart' as caseFIle;
abstract class InboxRepository {
  Future<List<OpenCases>> getOpenCases();
  Future<IprsModel> searchIPrs({required String idNo});
  Future<caseFIle.CaseFile> getCaseFile({required int id });
  Future<CaseFileSuspect> createSuspect({required FormData fd});
}
