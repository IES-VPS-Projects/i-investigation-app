import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/core/platform/connection_status.dart';
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
  Future<List<Occurence>> getOccurences() {
    // TODO: implement getOccurences
    throw UnimplementedError();
  }
}
