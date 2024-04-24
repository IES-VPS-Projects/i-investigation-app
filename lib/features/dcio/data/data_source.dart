import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/core/platform/connection_status.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/dcio/data/endpoints.dart';
import 'package:iinvestigation/features/dcio/data/models/occurence/occurence.dart';

abstract class DcioDataSource {
  Future<List<Occurence>> getOccurences();
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
}
