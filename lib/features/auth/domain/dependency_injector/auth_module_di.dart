import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/features/auth/data/data_source/auth_data_source.dart';
import 'package:iinvestigation/features/auth/data/repository/auth_repo_impl.dart';
import 'package:iinvestigation/features/auth/domain/repository/auth_repo.dart';
import 'package:iinvestigation/features/auth/domain/usecases/login.dart';
import 'package:iinvestigation/features/auth/presentation/state/auth_cubit.dart';
import 'package:kiwi/kiwi.dart';

part 'auth_module_di.g.dart';

abstract class AuthModuleDI {
  static KiwiContainer? container;
  // ignore: always_specify_types
  static final resolve = container?.resolve;

  void setup() {
    container = KiwiContainer();
    _$AuthModuleDI()._configure();
  }

  @Register.factory(AuthRepository, from: AuthRepositoryImpl)
  @Register.factory(AuthDataSource, from: AuthDataSourceImpl)
  @Register.singleton(AuthCubit)
  @Register.singleton(Login)
  // ignore: unused_element
  void _configure();
}

AuthModuleDI authModuleDI() => _$AuthModuleDI();
