// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_case_module_di.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$NewCaseModuleDI extends NewCaseModuleDI {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<NewCaseRepository>(
          (c) => NewCaseRepositoryImpl(c<NewCaseDataSource>()))
      ..registerFactory<NewCaseDataSource>(
          (c) => NewCaseDataSourceImpl(c<NetworkService>()))
      ..registerSingleton((c) => NewCaseCubit(c<NewCaseUseCase>()))
      ..registerSingleton((c) => NewCaseUseCase(c<NewCaseRepository>()));
  }
}
