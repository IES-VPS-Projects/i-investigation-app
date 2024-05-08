import 'package:iinvestigation/core/data/network_datasource/network_service.dart';
import 'package:iinvestigation/features/new_case/data/data_source/data_source.dart';
import 'package:iinvestigation/features/new_case/data/repository/new_case_repository_impl.dart';
import 'package:iinvestigation/features/new_case/domain/repository/new_case_repository.dart';
import 'package:iinvestigation/features/new_case/domain/usecase/new_case_usecase.dart';
import 'package:iinvestigation/features/new_case/presentation/state/new_case_cubit.dart';
import 'package:kiwi/kiwi.dart';

part 'new_case_module_di.g.dart';

abstract class NewCaseModuleDI {
  static KiwiContainer? container;
  // ignore: always_specify_types
  static final resolve = container?.resolve;
  void setup() {
    container = KiwiContainer();
    _$NewCaseModuleDI()._configure();
  }

  @Register.factory(NewCaseRepository, from: NewCaseRepositoryImpl)
  @Register.factory(NewCaseDataSource, from: NewCaseDataSourceImpl)
  @Register.singleton(NewCaseCubit)
  @Register.singleton(NewCaseUseCase)
  void _configure();
}

NewCaseModuleDI newCaseModuleDI() => _$NewCaseModuleDI();
