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
      ..registerSingleton((c) => InboxCubit(
          c<CreateSummary>(),
          c<CreateOffence>(),
          c<GetPenalCode>(),
          c<CreateCaseMaterial>(),
          c<CreateCaseNote>(),
          c<CreateWitness>(),
          c<CaseFileUseCase>(),
          c<GetOpenCases>(),
          c<SearchIPRS>(),
          c<CreateSuspect>()))
      ..registerSingleton((c) => GetOpenCases(c<InboxRepository>()))
      ..registerSingleton((c) => SearchIPRS(c<InboxRepository>()))
      ..registerSingleton((c) => CaseFileUseCase(c<InboxRepository>()))
      ..registerSingleton((c) => CreateWitness(c<InboxRepository>()))
      ..registerSingleton((c) => CreateSummary(c<InboxRepository>()))
      ..registerSingleton((c) => GetPenalCode(c<InboxRepository>()))
      ..registerSingleton((c) => CreateOffence(c<InboxRepository>()))
      ..registerSingleton((c) => CreateCaseMaterial(c<InboxRepository>()))
      ..registerSingleton((c) => CreateCaseNote(c<InboxRepository>()))
      ..registerSingleton((c) => CreateSuspect(c<InboxRepository>()))
      ..registerFactory<InboxRepository>(
          (c) => InboxRepositoryImpl(c<InboxDataSource>()))
      ..registerFactory<InboxDataSource>(
          (c) => InboxDataSourceImpl(c<NetworkService>()));
  }
}
