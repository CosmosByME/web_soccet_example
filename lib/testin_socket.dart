import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  WebSocketChannel channel = WebSocketChannel.connect(
    Uri.parse('wss://ws-feed.pro.coinbase.com'),
  );

  channel.sink.add(
    jsonEncode({
      "type": "subscribe",
      "channels": [
        {
          "name": "ticker",
          "product_ids": ["BTC-EUR"],
        },
      ],
    }),
  );

  channel.stream.listen(
    (data) {
      print('$data');
    },
    onError: (e, s) {
      print(e);
    },
  );
}
