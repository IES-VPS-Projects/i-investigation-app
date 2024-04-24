import "package:flutter_bloc/src/bloc_provider.dart";
import 'package:iinvestigation/features/auth/domain/dependency_injector/auth_module_di.dart';
import 'package:iinvestigation/features/auth/presentation/state/auth_cubit.dart';
import 'package:iinvestigation/features/dcio/domain/dependency_injection/dcio_module_di.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';
import 'package:nested/nested.dart';

// List<BlocProviderSingleChildWidget> providers = [
List<SingleChildWidget> providers = [
  BlocProvider(
    create: (context) => AuthModuleDI.resolve!<AuthCubit>(),
  ),
  BlocProvider(
    create: (context) => DciohModuleDI.resolve!<DcioCubit>(),
  ),
];
