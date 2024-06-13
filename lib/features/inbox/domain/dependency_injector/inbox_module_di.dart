import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/features/inbox/data/data_source/inbox_data_source.dart';
import 'package:iinvestigation/features/inbox/data/repository/inbox_repository_impl.dart';
import 'package:iinvestigation/features/inbox/domain/repository/inbox_repository.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/close_case.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/create_case_materials.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/create_case_notes.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/get_open_cases.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/get_penal_code.dart';
import 'package:iinvestigation/features/inbox/domain/usecases/search_iprs.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';
import 'package:kiwi/kiwi.dart';

import '../usecases/create_offence.dart';
import '../usecases/create_summary.dart';
import '../usecases/create_suspect.dart';
import '../usecases/create_witness.dart';
import '../usecases/get_case_file.dart';
import '../usecases/suspend_case.dart';

part 'inbox_module_di.g.dart';

abstract class InboxModuleDI {
  static KiwiContainer? container;
  // ignore: always_specify_types
  static final resolve = container?.resolve;
  void setup() {
    container = KiwiContainer();
    _$InboxModuleDI()._configure();
  }

  @Register.singleton(InboxCubit)
  @Register.singleton(GetOpenCases)
  @Register.singleton(SearchIPRS)
  @Register.singleton(CaseFileUseCase)
  @Register.singleton(CreateWitness)
  @Register.singleton(CreateSummary)
  @Register.singleton(GetPenalCode)
  @Register.singleton(CreateOffence)
  @Register.singleton(CreateCaseMaterial)
  @Register.singleton(CreateCaseNote)
  @Register.singleton(CreateSuspect)
  @Register.singleton(SuspendCase)
  @Register.singleton(CloseCase)
  @Register.factory(InboxRepository, from: InboxRepositoryImpl)
  @Register.factory(InboxDataSource, from: InboxDataSourceImpl)
  void _configure();
}

InboxModuleDI inboxModuleDI() => _$InboxModuleDI();
