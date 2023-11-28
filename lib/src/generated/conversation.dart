/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Conversation extends _i1.TableRow {
  Conversation({
    int? id,
    this.sender,
    this.to,
    required this.private,
    required this.hash,
  }) : super(id);

  factory Conversation.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Conversation(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      sender:
          serializationManager.deserialize<int?>(jsonSerialization['sender']),
      to: serializationManager.deserialize<int?>(jsonSerialization['to']),
      private:
          serializationManager.deserialize<bool>(jsonSerialization['private']),
      hash: serializationManager.deserialize<String>(jsonSerialization['hash']),
    );
  }

  static final t = ConversationTable();

  int? sender;

  int? to;

  bool private;

  String hash;

  @override
  String get tableName => 'conversation';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sender': sender,
      'to': to,
      'private': private,
      'hash': hash,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'sender': sender,
      'to': to,
      'private': private,
      'hash': hash,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'sender': sender,
      'to': to,
      'private': private,
      'hash': hash,
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
      case 'sender':
        sender = value;
        return;
      case 'to':
        to = value;
        return;
      case 'private':
        private = value;
        return;
      case 'hash':
        hash = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Conversation>> find(
    _i1.Session session, {
    ConversationExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Conversation>(
      where: where != null ? where(Conversation.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Conversation?> findSingleRow(
    _i1.Session session, {
    ConversationExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Conversation>(
      where: where != null ? where(Conversation.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Conversation?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Conversation>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ConversationExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Conversation>(
      where: where(Conversation.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Conversation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Conversation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Conversation row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ConversationExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Conversation>(
      where: where != null ? where(Conversation.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ConversationExpressionBuilder = _i1.Expression Function(
    ConversationTable);

class ConversationTable extends _i1.Table {
  ConversationTable() : super(tableName: 'conversation');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final sender = _i1.ColumnInt('sender');

  final to = _i1.ColumnInt('to');

  final private = _i1.ColumnBool('private');

  final hash = _i1.ColumnString('hash');

  @override
  List<_i1.Column> get columns => [
        id,
        sender,
        to,
        private,
        hash,
      ];
}

@Deprecated('Use ConversationTable.t instead.')
ConversationTable tConversation = ConversationTable();
