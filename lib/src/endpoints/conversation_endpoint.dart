import 'package:serverpod/serverpod.dart';
import 'package:test_server/src/generated/protocol.dart';

class ConversationEndPoint extends Endpoint {
  Future<void> add(Session session, Conversation conversation) async =>
      await Conversation.insert(session, conversation);
}
