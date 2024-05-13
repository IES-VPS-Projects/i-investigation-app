import 'package:iinvestigation/features/auth/domain/dependency_injector/auth_module_di.dart';
import 'package:iinvestigation/features/dcio/domain/dependency_injection/dcio_module_di.dart';
import 'package:iinvestigation/features/inbox/domain/dependency_injector/inbox_module_di.dart';
import 'package:iinvestigation/features/new_case/domain/dependency_injector/new_case_module_di.dart';
import 'package:iinvestigation/service/sockets/domain/socket_service_module_injector.dart';

import 'core_injector.dart';

void configureDependencies() {
  coreInjector().setup();
  authModuleDI().setup();
  dciohModuleDI().setup();
  inboxModuleDI().setup();
  newCaseModuleDI().setup();
  socketModuleDI().setup();
}
