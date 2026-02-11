import 'package:web_socket_channel/web_socket_channel.dart';

class SocketService {
  SocketService._();
  static final _instance = SocketService._();
  static SocketService get instance => _instance;

  static String SERVER = 'wss://echo.websocket.events';
  WebSocketChannel channel = WebSocketChannel.connect(Uri.parse(SERVER));

  void cloceSoccetChannel() {
    channel.sink.close();
  }
}
