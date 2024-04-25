// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_module_di.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$InboxModuleDI extends InboxModuleDI {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton((c) => InboxCubit(c<GetOpenCases>()))
      ..registerSingleton((c) => GetOpenCases(c<InboxRepository>()))
      ..registerFactory<InboxRepository>(
          (c) => InboxRepositoryImpl(c<InboxDataSource>()))
      ..registerFactory<InboxDataSource>(
          (c) => InboxDataSourceImpl(c<NetworkService>()));
  }
}
