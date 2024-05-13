
import 'package:kiwi/kiwi.dart';


import '../socket_cubit.dart';
part 'socket_service_module_injector.g.dart';

abstract class SocketModuleDI {
  static KiwiContainer? container;
  // ignore: always_specify_types
  static final resolve = container?.resolve;

  void setup() {
    container = KiwiContainer();
    _$SocketModuleDI()._configure();
  }

  @Register.singleton(SocketCubit) 
  // ignore: unused_element
  void _configure();
}
SocketModuleDI socketModuleDI() => _$SocketModuleDI();