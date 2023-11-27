import 'package:serverpod/serverpod.dart';
import 'package:test_server/src/generated/protocol.dart';
class MessageEndPoint extends Endpoint {
  String channel='22_459';

  @override
  Future<void> streamOpened(StreamingSession session) async {
    
    // int id = int.parse(
    //     session.queryParameters['id'].toString().replaceFirst('/', ''));
    var messages =
        await Message.find(session, where: (t) => t.channel.equals(channel));
    for (var mes in messages) {
      sendStreamMessage(session, mes);
    }
    session.messages.addListener(
      channel,
      (message) {
        sendStreamMessage(session, message);
      },
    );
  }

  @override
  Future<void> handleStreamMessage(
    StreamingSession session,
    SerializableEntity message,
  ) async {
    if (message is Message) {
      // print('handling $message');
      message.sent_at = DateTime.now();
      message.channel=channel;
      await Message.insert(session, message);

      session.messages.postMessage(
        channel,
        message,
      );
    }

    // For m
  }
// Future <List<Message>> index(Session session,int id)async{
//   var messages= await Message.find(session,where: (t)=>t.sender.equals(id) );
//   var messagesFor =await Message.find(session,where: (t)=>t.sent_to.equals(id) );
//   var almessages= session.db.query("SELECT * FROM message WHERE sender = $id OR sent_to =$id" );
//   print(almessages);
//   return messages;
// }

// Future <bool> strore(Session session,Message message)async{
//   message.sent_at=DateTime.now();
//   var insert =await Message.insert(session, message);
// return true;
// }

  static Future<void> _writeImageToDatabase() async {
    // Reset the timer so we trigger new writes.
  }
}
