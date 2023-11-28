import 'package:serverpod/serverpod.dart';
import 'package:test_server/src/generated/protocol.dart';

class UserEndPoint extends Endpoint {
  Future<User> getOne(Session session, id) async {
    User? user = await User.findById(session, id);

    return user!;
  }
Future<List<User>> getAllUsers(Session session)async{
  List<User> users= await User.find(session);
  return users;
}
  Future<bool> store(Session session, User user) async {
    bool inserted = false;
    try {
      await User.insert(session, user);
      inserted = true;
    } catch ( e) {
      print(e);
      inserted = false;
    }
    return inserted;
  }

  Future<bool> setOnline(Session session, User user) async {
    return await User.update(session, user);
  }
}
