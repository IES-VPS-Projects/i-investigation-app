import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/core/platform/connection_status.dart';
import 'package:iinvestigation/features/inbox/data/data_source/endpoints.dart';
import 'package:iinvestigation/features/inbox/data/models/open_cases/open_cases.dart';

abstract class InboxDataSource {
  Future<List<OpenCases>> getOpenCases();
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
}
