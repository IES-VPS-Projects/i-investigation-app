import 'package:dio/dio.dart';
import 'package:iinvestigation/features/inbox/data/models/iprs_model/iprs_model.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

import '../../data/models/case_file_suspect/case_file_suspect.dart';

import 'package:iinvestigation/features/inbox/data/models/case_file/case_file.dart'
    as caseFIle;

import '../../data/models/new_witness_response/new_witness_response.dart';
import '../../data/models/penal_code_response/penal_code_response.dart';

abstract class InboxRepository {
  Future<List<OpenCases>> getOpenCases();
  Future<IprsModel> searchIPrs({required String idNo});
  Future<caseFIle.CaseFile> getCaseFile({required int id});
  Future<CaseFileSuspect> createSuspect({required FormData fd});
  Future<dynamic> createCaseNote({required FormData fd});
  Future<dynamic> createCaseMaterial({required FormData fd});
  Future<dynamic> createOffence({required FormData fd});
  Future<dynamic> createSummary({required FormData fd});
  Future<List<PenalCodeResponse>> getPenalCodes();
  Future<NewWitnessResponse> createWitness({required FormData fd});

  Future<dynamic> suspendCaseFile({required int id});
  Future<dynamic> closeCaseFile({required int id});
}
