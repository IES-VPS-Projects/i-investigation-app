import 'package:iinvestigation/features/auth/domain/dependency_injector/auth_module_di.dart';

import 'core_injector.dart';

void configureDependencies() {
  coreInjector().setup();
  authModuleDI().setup();
}
