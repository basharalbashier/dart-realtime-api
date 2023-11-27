/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/message_endpoint.dart' as _i2;
import '../endpoints/user_endpoint.dart' as _i3;
import 'package:test_server/src/generated/user.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'messageEndPoint': _i2.MessageEndPoint()
        ..initialize(
          server,
          'messageEndPoint',
          null,
        ),
      'userEndPoint': _i3.UserEndPoint()
        ..initialize(
          server,
          'userEndPoint',
          null,
        ),
    };
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
              (endpoints['userEndPoint'] as _i3.UserEndPoint).getOne(
            session,
            params['id'],
          ),
        ),
        'store': _i1.MethodConnector(
          name: 'store',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i4.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i3.UserEndPoint).store(
            session,
            params['user'],
          ),
        ),
        'setOnline': _i1.MethodConnector(
          name: 'setOnline',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i4.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userEndPoint'] as _i3.UserEndPoint).setOnline(
            session,
            params['user'],
          ),
        ),
      },
    );
  }
}
