import 'package:dio/dio.dart';
import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/core/platform/connection_status.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/dcio/data/endpoints.dart';
import 'package:iinvestigation/features/dcio/data/models/new_case_file/new_case_file.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';

import 'models/users/users.dart';

abstract class DcioDataSource {
  Future<List<Occurence>> getOccurences();
  Future<List<Users>> getUsers();
  Future<NewCaseFile> createCaseFile({required Map payload});
  Future<dynamic> updateCaseOfficers({required int id, required Map payload});
}

class DcioDataSourceImpl implements DcioDataSource {
  final NetworkService _networkService;
  bool? isOnline;
  _getOnlineStatus() async {
    isOnline = await ConnectionStatusSingleton.isOnline();
  }

  DcioDataSourceImpl(this._networkService) {
    _getOnlineStatus();
  }
  @override
  Future<List<Occurence>> getOccurences() async {
    var response = await _networkService.getHttp(DcioEndpoints.occurences);
    // logger.wtf();

    return (response['data'] as List)
        .map((e) => Occurence.fromJson(e))
        .toList();
  }

  @override
  Future<List<Users>> getUsers() async {
    var response = await _networkService.getHttp(DcioEndpoints.users);

    return (response['data'] as List).map((e) => Users.fromJson(e)).toList();
  }

  @override
  Future<NewCaseFile> createCaseFile({required Map payload}) async {
    var fd = FormData.fromMap(payload as Map<String, dynamic>);
    var response =
        await _networkService.postHttp(DcioEndpoints.casefiles, body: fd);
    // logger.wtf();
    logger.wtf(response);

    return NewCaseFile.fromJson(response);
  }

  @override
  Future updateCaseOfficers({required int id, required Map payload}) async {
    var response = await _networkService
        .postHttp(DcioEndpoints.casefilesOfficers + '$id', body: payload);
    // logger.wtf();
    logger.wtf(response);

    return NewCaseFile.fromJson(response);
  }
}
