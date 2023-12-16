/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class User extends _i1.TableRow {
  User({
    int? id,
    this.uid,
    required this.name,
    this.email,
    this.phone,
    this.image,
    this.photourl,
    this.last_seen,
    this.status,
    this.deleted,
  }) : super(id);

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      uid: serializationManager.deserialize<String?>(jsonSerialization['uid']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      email:
          serializationManager.deserialize<String?>(jsonSerialization['email']),
      phone: serializationManager.deserialize<int?>(jsonSerialization['phone']),
      image: serializationManager.deserialize<int?>(jsonSerialization['image']),
      photourl: serializationManager
          .deserialize<String?>(jsonSerialization['photourl']),
      last_seen: serializationManager
          .deserialize<DateTime?>(jsonSerialization['last_seen']),
      status:
          serializationManager.deserialize<bool?>(jsonSerialization['status']),
      deleted:
          serializationManager.deserialize<bool?>(jsonSerialization['deleted']),
    );
  }

  static final t = UserTable();

  String? uid;

  String name;

  String? email;

  int? phone;

  int? image;

  String? photourl;

  DateTime? last_seen;

  bool? status;

  bool? deleted;

  @override
  String get tableName => 'users';

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'uid': uid,
      'name': name,
      'email': email,
      'phone': phone,
      'image': image,
      'photourl': photourl,
      'last_seen': last_seen,
      'status': status,
      'deleted': deleted,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'uid': uid,
      'name': name,
      'email': email,
      'phone': phone,
      'image': image,
      'photourl': photourl,
      'last_seen': last_seen,
      'status': status,
      'deleted': deleted,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'uid': uid,
      'name': name,
      'email': email,
      'phone': phone,
      'image': image,
      'photourl': photourl,
      'last_seen': last_seen,
      'status': status,
      'deleted': deleted,
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
      case 'uid':
        uid = value;
        return;
      case 'name':
        name = value;
        return;
      case 'email':
        email = value;
        return;
      case 'phone':
        phone = value;
        return;
      case 'image':
        image = value;
        return;
      case 'photourl':
        photourl = value;
        return;
      case 'last_seen':
        last_seen = value;
        return;
      case 'status':
        status = value;
        return;
      case 'deleted':
        deleted = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<User>> find(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<User?> findSingleRow(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<User>(
      where: where != null ? where(User.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<User?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<User>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required UserExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    UserExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where != null ? where(User.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef UserExpressionBuilder = _i1.Expression Function(UserTable);

class UserTable extends _i1.Table {
  UserTable() : super(tableName: 'users');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final uid = _i1.ColumnString('uid');

  final name = _i1.ColumnString('name');

  final email = _i1.ColumnString('email');

  final phone = _i1.ColumnInt('phone');

  final image = _i1.ColumnInt('image');

  final photourl = _i1.ColumnString('photourl');

  final last_seen = _i1.ColumnDateTime('last_seen');

  final status = _i1.ColumnBool('status');

  final deleted = _i1.ColumnBool('deleted');

  @override
  List<_i1.Column> get columns => [
        id,
        uid,
        name,
        email,
        phone,
        image,
        photourl,
        last_seen,
        status,
        deleted,
      ];
}

@Deprecated('Use UserTable.t instead.')
UserTable tUser = UserTable();
