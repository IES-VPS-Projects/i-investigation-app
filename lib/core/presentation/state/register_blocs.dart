import "package:flutter_bloc/src/bloc_provider.dart";
import 'package:iinvestigation/features/auth/domain/dependency_injector/auth_module_di.dart';
import 'package:iinvestigation/features/auth/presentation/state/auth_cubit.dart';
import 'package:iinvestigation/features/dcio/domain/dependency_injection/dcio_module_di.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';
import 'package:iinvestigation/features/inbox/domain/dependency_injector/inbox_module_di.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';
import 'package:iinvestigation/features/new_case/domain/dependency_injector/new_case_module_di.dart';
import 'package:iinvestigation/features/new_case/presentation/state/new_case_cubit.dart';
import 'package:iinvestigation/service/sockets/domain/socket_service_module_injector.dart';
import 'package:iinvestigation/service/sockets/socket_cubit.dart';
import 'package:nested/nested.dart';

// List<BlocProviderSingleChildWidget> providers = [
List<SingleChildWidget> providers = [
  BlocProvider(
    create: (context) => AuthModuleDI.resolve!<AuthCubit>(),
  ),
  BlocProvider(
    create: (context) => DciohModuleDI.resolve!<DcioCubit>(),
  ),
  BlocProvider(
    create: (context) => InboxModuleDI.resolve!<InboxCubit>(),
  ),
  BlocProvider(
    create: (context) => NewCaseModuleDI.resolve!<NewCaseCubit>(),
  ),
  BlocProvider(
    create: (context) => SocketModuleDI.resolve!<SocketCubit>(),
  ),
];
