import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/features/dcio/data/data_source.dart';
import 'package:iinvestigation/features/dcio/data/repository/dcio_repository_impl.dart';
import 'package:iinvestigation/features/dcio/domain/repository/dcio_repository.dart';
import 'package:iinvestigation/features/dcio/domain/usecases/get_cases.dart';
import 'package:iinvestigation/features/dcio/domain/usecases/get_users.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';
import 'package:kiwi/kiwi.dart';

import '../usecases/create_case_file.dart';

part 'dcio_module_di.g.dart';

abstract class DciohModuleDI {
  static KiwiContainer? container;
  // ignore: always_specify_types
  static final resolve = container?.resolve;

  void setup() {
    container = KiwiContainer();
    _$DciohModuleDI()._configure();
  }

  @Register.singleton(DcioCubit)
  @Register.singleton(GetOccurences)
  @Register.singleton(Getusers)
  @Register.singleton(CreateCaseFile)
  @Register.factory(DcioDataSource, from: DcioDataSourceImpl)
  @Register.factory(DcioRepository, from: DcioRepositoryImpl)
  // ignore: unused_element
  void _configure();
}

DciohModuleDI dciohModuleDI() => _$DciohModuleDI();
