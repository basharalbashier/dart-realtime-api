/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Message extends _i1.TableRow {
  Message({
    int? id,
    this.channel,
    required this.content,
    this.send_by,
    this.sent_at,
    this.seen_at,
    required this.seen_by,
    this.group,
    this.deleted,
    this.replayto,
  }) : super(id);

  factory Message.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Message(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      channel: serializationManager
          .deserialize<String?>(jsonSerialization['channel']),
      content: serializationManager
          .deserialize<String>(jsonSerialization['content']),
      send_by: serializationManager
          .deserialize<String?>(jsonSerialization['send_by']),
      sent_at: serializationManager
          .deserialize<DateTime?>(jsonSerialization['sent_at']),
      seen_at: serializationManager
          .deserialize<DateTime?>(jsonSerialization['seen_at']),
      seen_by: serializationManager
          .deserialize<List<String>>(jsonSerialization['seen_by']),
      group:
          serializationManager.deserialize<bool?>(jsonSerialization['group']),
      deleted:
          serializationManager.deserialize<bool?>(jsonSerialization['deleted']),
      replayto:
          serializationManager.deserialize<int?>(jsonSerialization['replayto']),
    );
  }

  static final t = MessageTable();

  String? channel;

  String content;

  String? send_by;

  DateTime? sent_at;

  DateTime? seen_at;

  List<String> seen_by;

  bool? group;

  bool? deleted;

  int? replayto;

  @override
  String get tableName => 'message';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'channel': channel,
      'content': content,
      'send_by': send_by,
      'sent_at': sent_at,
      'seen_at': seen_at,
      'seen_by': seen_by,
      'group': group,
      'deleted': deleted,
      'replayto': replayto,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'channel': channel,
      'content': content,
      'send_by': send_by,
      'sent_at': sent_at,
      'seen_at': seen_at,
      'seen_by': seen_by,
      'group': group,
      'deleted': deleted,
      'replayto': replayto,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'channel': channel,
      'content': content,
      'send_by': send_by,
      'sent_at': sent_at,
      'seen_at': seen_at,
      'seen_by': seen_by,
      'group': group,
      'deleted': deleted,
      'replayto': replayto,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'channel':
        channel = value;
        return;
      case 'content':
        content = value;
        return;
      case 'send_by':
        send_by = value;
        return;
      case 'sent_at':
        sent_at = value;
        return;
      case 'seen_at':
        seen_at = value;
        return;
      case 'seen_by':
        seen_by = value;
        return;
      case 'group':
        group = value;
        return;
      case 'deleted':
        deleted = value;
        return;
      case 'replayto':
        replayto = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Message>> find(
    _i1.Session session, {
    MessageExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Message>(
      where: where != null ? where(Message.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Message?> findSingleRow(
    _i1.Session session, {
    MessageExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Message>(
      where: where != null ? where(Message.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Message?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Message>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required MessageExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Message>(
      where: where(Message.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Message row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Message row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Message row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    MessageExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Message>(
      where: where != null ? where(Message.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef MessageExpressionBuilder = _i1.Expression Function(MessageTable);

class MessageTable extends _i1.Table {
  MessageTable() : super(tableName: 'message');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final channel = _i1.ColumnString('channel');

  final content = _i1.ColumnString('content');

  final send_by = _i1.ColumnString('send_by');

  final sent_at = _i1.ColumnDateTime('sent_at');

  final seen_at = _i1.ColumnDateTime('seen_at');

  final seen_by = _i1.ColumnSerializable('seen_by');

  final group = _i1.ColumnBool('group');

  final deleted = _i1.ColumnBool('deleted');

  final replayto = _i1.ColumnInt('replayto');

  @override
  List<_i1.Column> get columns => [
        id,
        channel,
        content,
        send_by,
        sent_at,
        seen_at,
        seen_by,
        group,
        deleted,
        replayto,
      ];
}

@Deprecated('Use MessageTable.t instead.')
MessageTable tMessage = MessageTable();
