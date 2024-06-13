import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/core/platform/connection_status.dart';
import 'package:iinvestigation/features/inbox/data/data_source/endpoints.dart';
import 'package:iinvestigation/features/inbox/data/models/new_witness_response/new_witness_response.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

import 'package:iinvestigation/features/inbox/data/models/case_file/case_file.dart'
    as caseFIle;
import 'package:iinvestigation/features/inbox/data/models/penal_code_response/penal_code_response.dart';

import '../models/case_file_suspect/case_file_suspect.dart';
import '../models/iprs_model/iprs_model.dart';

abstract class InboxDataSource {
  Future<List<OpenCases>> getOpenCases();
  Future<List<PenalCodeResponse>> getPenalCodes();
  Future<IprsModel> searchIPrs({required String idNo});
  Future<CaseFileSuspect> createSuspect({required FormData fd});
  Future<NewWitnessResponse> createWitness({required FormData fd});
  Future<caseFIle.CaseFile> getCaseFile({required int id});
  Future<dynamic> createCaseNote({required FormData fd});
  Future<dynamic> createCaseMaterial({required FormData fd});
  Future<dynamic> createOffence({required FormData fd});
  Future<dynamic> createSummary({required FormData fd});
  Future<dynamic> suspendCaseFile({required int id});

  Future<dynamic> closeCaseFile({required int id});
}

class InboxDataSourceImpl implements InboxDataSource {
  final NetworkService _networkService;
  // ignore: non_constant_identifier_names
  InboxDataSourceImpl(this._networkService) {
    _getOnlineStatus();
  }

  bool? isOnline;
  _getOnlineStatus() async {
    isOnline = await ConnectionStatusSingleton.isOnline();
  }

  @override
  Future<List<OpenCases>> getOpenCases() async {
    var response = await _networkService.getHttp(InboxEndpoints.cases);

    return (response['data'] as List)
        .map((e) => OpenCases.fromJson(e))
        .toList();
  }

  @override
  Future<IprsModel> searchIPrs({required String idNo}) async {
    var response = await _networkService
        .getHttp("${InboxEndpoints.serchIprs}?id_no=$idNo");
    return IprsModel.fromJson(response['data']);
  }

  @override
  Future<CaseFileSuspect> createSuspect({required FormData fd}) async {
    var response = await _networkService.postHttp(
        InboxEndpoints.caseNoteSuspect,
        body: fd,
        tokenRequired: true);
    return CaseFileSuspect.fromJson(response['data']);
  }

  @override
  Future<caseFIle.CaseFile> getCaseFile({required int id}) async {
    var response = await _networkService.getHttp("${InboxEndpoints.cases}/$id",
        tokenRequired: true);
    print(response);

    return caseFIle.CaseFile.fromJson(response);
  }

  @override
  Future<NewWitnessResponse> createWitness({required FormData fd}) async {
    var response = await _networkService.postHttp(
        InboxEndpoints.caseNoteWitness,
        body: fd,
        tokenRequired: true);
    return NewWitnessResponse.fromJson(response);
  }

  @override
  Future createCaseNote({required FormData fd}) async {
    var response = await _networkService.postHttp(InboxEndpoints.caseNote,
        body: fd, tokenRequired: true);
    return response;
  }

  @override
  Future createCaseMaterial({required FormData fd}) async {
    var response = await _networkService.postHttp(InboxEndpoints.caseMaterial,
        body: fd, tokenRequired: true);
    return response;
  }

  @override
  Future<List<PenalCodeResponse>> getPenalCodes() async {
    var response = await _networkService.getHttp(InboxEndpoints.penalCode);

    return (response['data'] as List)
        .map((e) => PenalCodeResponse.fromJson(e))
        .toList();
  }

  @override
  Future createOffence({required FormData fd}) async {
    var response = await _networkService.postHttp(
        InboxEndpoints.caseNoteOffence,
        body: fd,
        tokenRequired: false);
    return response;
  }

  @override
  Future createSummary({required FormData fd}) async {
    var response = await _networkService.postHttp(InboxEndpoints.caseSummary,
        body: fd, tokenRequired: false);
    return response;
  }
  
  @override
  Future suspendCaseFile({required int id}) async  {
     var response = await _networkService.getHttp(InboxEndpoints.casesSuspend+id.toString());

    return response;
  }
  
  @override
  Future closeCaseFile({required int id}) async {
    var response = await _networkService.getHttp(InboxEndpoints.caseClose+id.toString());

    return response;
  }
}
