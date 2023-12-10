import 'package:faker/faker.dart';
import 'package:serverpod/serverpod.dart';
import 'package:test_server/src/generated/protocol.dart';
import 'package:test_server/src/helpers/check_create_conversation.dart';

class MessageEndPoint extends Endpoint {
  @override
  Future<void> streamOpened(StreamingSession session) async {
    String channel = await isConv(session);
    session.messages
        .addListener(channel, (message) => sendStreamMessage(session, message));
    List<Message> messages =
        await Message.find(session, where: (p0) => p0.channel.equals(channel));
    for (Message mes in messages) {
      session.messages.postMessage(
        channel,
        mes,
      );
    }
  }

  @override
  Future<void> handleStreamMessage(
    StreamingSession session,
    SerializableEntity message,
  ) async {
    if (message is Message) {
      print("inserting");
      String channel = await isConv(session);
      print(channel);
      message.sent_at = DateTime.now();
      message.channel = channel;
      await Message.insert(session, message);
      session.messages.postMessage(
        channel,
        message,
      );
    }
  }
}
