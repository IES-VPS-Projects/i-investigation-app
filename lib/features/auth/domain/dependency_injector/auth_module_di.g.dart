// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_module_di.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$AuthModuleDI extends AuthModuleDI {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<AuthRepository>(
          (c) => AuthRepositoryImpl(c<AuthDataSource>()))
      ..registerFactory<AuthDataSource>(
          (c) => AuthDataSourceImpl(c<NetworkService>()))
      ..registerSingleton((c) => AuthCubit(c<Login>()))
      ..registerSingleton((c) => Login(c<AuthRepository>()));
  }
}
