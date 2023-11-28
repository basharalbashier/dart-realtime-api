  import 'package:serverpod/serverpod.dart';

String format(StreamingSession session, String key) =>
      session.queryParameters[key].toString().replaceFirst('/', '');

