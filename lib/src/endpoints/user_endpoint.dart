import 'package:faker/faker.dart';
import 'package:serverpod/serverpod.dart';
import 'package:test_server/src/generated/protocol.dart';

String channel = "Users";

class UserEndPoint extends Endpoint {
  Future<User?> getOne(Session session, id) async {
    User? user = await User.findSingleRow(
      session,
      where: (p0) => p0.uid.equals(id),
    );
    return user!;
  }

  Future<List<User>> getAllUsers(Session session) async {
    List<User> users = await User.find(session);
    if (users.isEmpty) {
      for (int i = 0; i < 3; i++) {
        User oneUser = await fakeOne();
        await User.insert(session, oneUser);
      }
      return await User.find(session);
    }
    return users;
  }

  Future<bool> store(Session session, User user) async {
    bool inserted = false;
    try {
      await User.findSingleRow(
                session,
                where: (p0) => p0.uid.equals(user.uid),
              ) ==
              null
          ? await User.insert(session, user)
          : null;
      inserted = true;
    } catch (e) {
      print(e);
      inserted = false;
    }
    return inserted;
  }

  Future<bool> update(Session session, User user) async {
    return await User.update(session, user);
  }

  // List<User> connected = [];
  // @override
  // Future<void> streamOpened(StreamingSession session) async {
  //   var key = format(session, "key");
  //   if (key == "user") {
  //     print("here we user");
  //     var id = format(session, "id");
  //     User user = await getOne(session, id);
  //     connected.removeWhere((element) => element.id == user.id);
  //     connected.add(user);

  //     session.messages.addListener(
  //         channel, (message) => sendStreamMessage(session, message));
  //     for (User user in connected) {
  //       session.messages.postMessage(channel, user);
  //     }
  //   }
  //   session.close();
  // }

  // @override
  // Future<void> streamClosed(StreamingSession session) async {
  //   var key = format(session, "key");
  //   if (key == "user") {
  //     var id = format(session, "id");
  //     User user = await getOne(session, id);
  //     connected.removeWhere((element) => element.id == user.id);
  //     user.last_seen = DateTime.now();
  //     await update(session, user);
  //     print("User $id is disconnected");
  //   }
  // }
}

Future<User> fakeOne() async => User(
      name: faker.person.name(),
      email: faker.internet.email(),
      phone: faker.randomGenerator.integer(10),
    );
