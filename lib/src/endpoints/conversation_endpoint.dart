import 'package:serverpod/serverpod.dart';
import 'package:test_server/src/generated/protocol.dart';

import '../helpers/format_param.dart';

class ConversationEndPoint extends Endpoint {
  Future<void> add(Session session, Conversation conversation) async =>
    await Conversation.insert(session, conversation);
  




}

//   Future<Conversation?> getBySender(Session session,int senderId)async{
// return await Conversation.findSingleRow(session,where: (t) => t.sender.equals(senderId));
//   }

