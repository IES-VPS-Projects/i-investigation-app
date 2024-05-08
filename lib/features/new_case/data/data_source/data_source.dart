import 'package:dio/dio.dart';
import 'package:iinvestigation/core/data/datasources/local_storage_data_source.dart';
import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/core/platform/connection_status.dart';
import 'package:iinvestigation/features/new_case/data/data_source/endpoints.dart';

abstract class NewCaseDataSource {
  Future<dynamic> createCase({required FormData fd});
}

class NewCaseDataSourceImpl implements NewCaseDataSource {
  final NetworkService _networkService;
  // ignore: non_constant_identifier_names
  NewCaseDataSourceImpl(this._networkService) {
    _getOnlineStatus();
  }

  bool? isOnline;
  _getOnlineStatus() async {
    isOnline = await ConnectionStatusSingleton.isOnline();
  }

  @override
  Future createCase({required FormData fd}) async {
    var response = _networkService.postHttp(NewCaseEndpoints.newCase,
        body: fd, tokenRequired: true);
    return response;
  }
}
