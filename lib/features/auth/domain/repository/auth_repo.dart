import 'package:iinvestigation/features/auth/data/models/auth_response_model/auth_response_model.dart';

abstract class AuthRepository {
  Future<AuthResponseModel> login(Map params);
}
