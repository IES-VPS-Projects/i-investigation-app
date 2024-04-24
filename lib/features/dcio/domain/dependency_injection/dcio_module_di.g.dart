// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dcio_module_di.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$DciohModuleDI extends DciohModuleDI {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton((c) =>
          DcioCubit(c<GetOccurences>(), c<Getusers>(), c<CreateCaseFile>()))
      ..registerSingleton((c) => GetOccurences(c<DcioRepository>()))
      ..registerSingleton((c) => Getusers(c<DcioRepository>()))
      ..registerSingleton((c) => CreateCaseFile(c<DcioRepository>()))
      ..registerFactory<DcioDataSource>(
          (c) => DcioDataSourceImpl(c<NetworkService>()))
      ..registerFactory<DcioRepository>(
          (c) => DcioRepositoryImpl(c<DcioDataSource>()));
  }
}
