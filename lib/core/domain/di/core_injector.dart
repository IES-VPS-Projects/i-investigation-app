import 'package:kiwi/kiwi.dart';

import '../../data/network_datasource/network_service.dart';
import '../../data/network_datasource/network_service_impl.dart';
import '../../data/network_datasource/rest_client.dart';

part 'core_injector.g.dart';

abstract class CoreInjector {
  static KiwiContainer? container;
  // ignore: always_specify_types
  static final resolve = container?.resolve;

  void setup() {
    container = KiwiContainer();
    _$CoreInjector()._configure();
  }

  @Register.factory(NetworkService, from: NetworkServiceImpl)
  @Register.singleton(RestClient)
  void _configure(); // ignore: unused_element
}

CoreInjector coreInjector() => _$CoreInjector();
