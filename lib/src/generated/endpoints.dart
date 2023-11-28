/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/conversation_endpoint.dart' as _i2;
import '../endpoints/message_endpoint.dart' as _i3;
import '../endpoints/user_endpoint.dart' as _i4;
import 'package:test_server/src/generated/conversation.dart' as _i5;
import 'package:test_server/src/generated/user.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'conversationEndPoint': _i2.ConversationEndPoint()
        ..initialize(
          server,
          'conversationEndPoint',
          null,
        ),
      'messageEndPoint': _i3.MessageEndPoint()
        ..initialize(
          server,
          'messageEndPoint',
          null,
        ),
      'userEndPoint': _i4.UserEndPoint()
        ..initialize(
          server,
          'userEndPoint',
          null,
        ),
    };
    connectors['conversationEndPoint'] = _i1.EndpointConnector(
      name: 'conversationEndPoint',
      endpoint: endpoints['conversationEndPoint']!,
      methodConnectors: {
        'add': _i1.MethodConnector(
          name: 'add',
          params: {
            'conversation': _i1.ParameterDescription(
              name: 'conversation',
              type: _i1.getType<_i5.Conversation>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['conversationEndPoint'] as _i2.ConversationEndPoint)
                  .add(
            session,
            params['conversation'],
          ),
        )
      },
    );
    connectors['messageEndPoint'] = _i1.EndpointConnector(
      name: 'messageEndPoint',
      endpoint: endpoints['messageEndPoint']!,
      methodConnectors: {},
    );
    connectors['userEndPoint'] = _i1.EndpointConnector(
      name: 'userEndPoint',
      endpoint: endpoints['userEndPoint']!,
      methodConnectors: {
        'getOne': _i1.MethodConnector(
          name: 'getOne',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<dynamic>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i4.UserEndPoint).getOne(
            session,
            params['id'],
          ),
        ),
        'getAllUsers': _i1.MethodConnector(
          name: 'getAllUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i4.UserEndPoint)
                  .getAllUsers(session),
        ),
        'store': _i1.MethodConnector(
          name: 'store',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i6.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i4.UserEndPoint).store(
            session,
            params['user'],
          ),
        ),
        'setOnline': _i1.MethodConnector(
          name: 'setOnline',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i6.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i4.UserEndPoint).setOnline(
            session,
            params['user'],
          ),
        ),
      },
    );
  }
}
