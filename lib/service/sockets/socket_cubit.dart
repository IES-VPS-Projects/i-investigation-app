import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:iinvestigation/core/data/datasources/local_storage_data_source.dart';
import 'package:iinvestigation/core/data/network_datasource/config.dart';
import 'package:iinvestigation/core/utilities/logging_utils.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'socket_state.dart';
part 'socket_cubit.freezed.dart';
part 'socket_cubit.g.dart';

class SocketCubit extends Cubit<SocketState> {
  SocketCubit()
      : super(const SocketState.initial(
            payload: SocketStatePayload(error: null)));

  Future init() async {
    print('socket');

    String? name = await getData('service_Number');
    String? token = await getData('token');
    logger.f(name);
    try {
      IO.Socket socket = IO.io(BASE_URLSOCKET, <String, dynamic>{
        'autoConnect': false,
        'transports': ['websocket'],
      }).connect();
      socket.onConnectError((err) => print(err));
      socket.onConnect((_) {
        logger.i('connect $_');
        socket.emit('message', 'mobile');
        socket.emit('service_Number', name);
      });

      socket.on('event', (data) => logger.i(data));
      socket.on('message', (data) => logger.i(data));
      socket.on('newCases', (data) {
        logger.i(data);
        logger.i('new message');
      });
      socket.onDisconnect((_) => logger.i('disconnect'));
      socket.on('fromServer', (_) => logger.i(_));
    } catch (e) {
      logger.e(e);
    }
  }
}
