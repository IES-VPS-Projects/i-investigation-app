import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/core/data/network_datasource/network_service_impl.dart';
import 'package:iinvestigation/core/platform/connection_status.dart';
import 'package:iinvestigation/core/utilities/error_helpers.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:iinvestigation/features/auth/data/data_source/end_points.dart';
import 'package:iinvestigation/features/auth/data/models/auth_response_model/auth_response_model.dart';

abstract class AuthDataSource {
  Future<AuthResponseModel> login(Map params);
}

class AuthDataSourceImpl implements AuthDataSource {
  final NetworkService _networkService;
  AuthDataSourceImpl(this._networkService) {
    _getOnlineStatus();
  }

  bool? isOnline;
  _getOnlineStatus() async {
    isOnline = await ConnectionStatusSingleton.isOnline();
  }

  @override
  Future<AuthResponseModel> login(Map params) async {
    print(params);
    var response =
        await _networkService.postHttp(AuthEndPoints.login, body: params);
    
    // if (response['error'] != null) {
    //   await handleApiFailure(
    //     source: 'login',
    //     errorMessage: (response['error'] as ApiErrors).name,
    //     errorCode: response['error'] as ApiErrors,
    //     isOnlineStatus: isOnline ?? false,
    //   );
    // }
    logger.t(response);
    return AuthResponseModel.fromJson(response);
  }
}
