import 'package:dio/dio.dart';
import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/core/platform/connection_status.dart';
import 'package:iinvestigation/features/inbox/data/data_source/endpoints.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

import 'package:iinvestigation/features/inbox/data/models/case_file/case_file.dart' as caseFIle;


import '../models/case_file_suspect/case_file.dart';
import '../models/case_file_suspect/case_file_suspect.dart';
import '../models/iprs_model/iprs_model.dart';

abstract class InboxDataSource {
  Future<List<OpenCases>> getOpenCases();
  Future<IprsModel> searchIPrs({required String idNo});
  Future<CaseFileSuspect> createSuspect({required FormData fd});
  Future<caseFIle.CaseFile> getCaseFile({required int id });

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
    print('data');
    var response = await _networkService.postHttp(
        InboxEndpoints.caseNoteSuspect,
        body: fd,
        tokenRequired: true);
    return CaseFileSuspect.fromJson(response['data']);
  }
  
  @override
  Future<caseFIle.CaseFile> getCaseFile({required int id}) async {
      var response = await _networkService.getHttp(
        "${InboxEndpoints.cases}/$id", 
        tokenRequired: true);
    return caseFIle.CaseFile.fromJson(response['data']);
  }
}
