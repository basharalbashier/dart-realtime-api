import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';
import 'format_param.dart';

Future<Conversation?> getByHash(StreamingSession session, String hash) async =>
    await Conversation.findSingleRow(session,
            // ignore: invalid_return_type_for_catch_error
            where: (p0) => p0.hash.equals(hash))
        // ignore: invalid_return_type_for_catch_error
        .catchError((onError) => print);

Future<String> isConv(StreamingSession session) async {
  Conversation? wantedConversation;

  var id = format(session, "id");

  var to = format(session, "to");

  wantedConversation = await getByHash(session, "${id}_$to");
  wantedConversation ??= await getByHash(session, "${to}_$id");

  if (wantedConversation == null) {
    var newConversation = Conversation(
      private: true /**change it if group */,
      hash: "${id}_$to",
    );
    await Conversation.insert(session, newConversation);
    wantedConversation = newConversation;
  }

  return wantedConversation.hash;
}
