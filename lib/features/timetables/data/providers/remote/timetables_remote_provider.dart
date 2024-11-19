import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:on_time/core/errors/failure.dart';
import 'package:on_time/core/network/api_endpoints/api_endpoints.dart';
import 'package:on_time/core/network/network.dart';
import 'package:on_time/features/timetables/data/models/socket_response_model/socket_response_model.dart';
import 'package:on_time/features/timetables/data/models/timetable_model/timetable_model.dart';
import 'package:on_time/features/timetables/domain/use_cases/add_event_host_use_case/add_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_event_use_case/create_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/create_timetable_use_case/create_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_event_use_case/delete_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/delete_timetable_use_case/delete_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/invitation_use_case/add_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/leave_timetable_use_case/leave_timetable_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/remove_event_host_use_case/remove_event_host_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_event_use_case/update_event_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_member_use_case/update_member_use_case.dart';
import 'package:on_time/features/timetables/domain/use_cases/update_timetable_use_case/update_timetable_use_case.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract interface class TimetablesRemoteProvider {
  Future<Either<Failure, TimetableModel>> createTimetable(
    CreateTimetableParams params,
  );

  Future<Either<Failure, void>> updateTimetable(
    UpdateTimetableParams params,
  );

  Future<Either<Failure, void>> deleteTimetable(
    DeleteTimetableParams params,
  );

  Future<Either<Failure, void>> leaveTimetable(
    LeaveTimetableParams params,
  );

  Future<Either<Failure, void>> createEvent(
    CreateEventParams params,
  );

  Future<Either<Failure, void>> updateEvent(
    UpdateEventParams params,
  );

  Future<Either<Failure, void>> deleteEvent(
    DeleteEventParams params,
  );

  Future<Either<Failure, void>> addHost(
    AddEventHostParams params,
  );

  Future<Either<Failure, void>> removeHost(
    RemoveEventHostParams params,
  );

  Future<Either<Failure, void>> invitation(
    InvitationParams params,
  );

  Future<Either<Failure, void>> updateMember(
    UpdateMemberParams params,
  );

  Future<Either<Failure, void>> connectSocket(String token);

  Future<Either<Failure, void>> disconnectSocket();

  Stream<SocketResponseModel>? get getSocketStream;
}

class TimetablesRemoteProviderImpl implements TimetablesRemoteProvider {
  TimetablesRemoteProviderImpl({
    required this.baseUrl,
    required this.network,
  });

  WebSocketChannel? _webSocketChannel;

  final Network network;

  final String baseUrl;

  @override
  Future<Either<Failure, TimetableModel>> createTimetable(
    CreateTimetableParams params,
  ) {
    return network.request(
      endpoint: ApiEndpoints.createTimetable,
      data: params.toJson(),
      parser: (json) => TimetableModel.fromJson(
        json as Map<String, dynamic>,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> updateTimetable(
    UpdateTimetableParams params,
  ) {
    return network.request(
      endpoint: ApiEndpoints.updateTimetable,
      data: params.toJson(),
      parser: (_) {},
    );
  }

  @override
  Future<Either<Failure, void>> deleteTimetable(
    DeleteTimetableParams params,
  ) {
    return network.request(
      endpoint: ApiEndpoints.deleteTimetable,
      data: params.toJson(),
      parser: (_) {},
    );
  }

  @override
  Future<Either<Failure, void>> leaveTimetable(
    LeaveTimetableParams params,
  ) {
    return network.request(
      endpoint: ApiEndpoints.leaveTimetable,
      data: params.toJson(),
      parser: (_) {},
    );
  }

  @override
  Future<Either<Failure, void>> createEvent(
    CreateEventParams params,
  ) {
    return network.request(
      endpoint: ApiEndpoints.createEvent,
      data: params.toJson(),
      parser: (_) {},
    );
  }

  @override
  Future<Either<Failure, void>> updateEvent(
    UpdateEventParams params,
  ) {
    return network.request(
      endpoint: ApiEndpoints.updateEvent,
      data: params.toJson(),
      parser: (_) {},
    );
  }

  @override
  Future<Either<Failure, void>> deleteEvent(
    DeleteEventParams params,
  ) {
    return network.request(
      endpoint: ApiEndpoints.deleteEvent,
      data: params.toJson(),
      parser: (_) {},
    );
  }

  @override
  Future<Either<Failure, void>> addHost(
    AddEventHostParams params,
  ) {
    return network.request(
      endpoint: ApiEndpoints.addHost,
      data: params.toJson(),
      parser: (_) {},
    );
  }

  @override
  Future<Either<Failure, void>> removeHost(
    RemoveEventHostParams params,
  ) {
    return network.request(
      endpoint: ApiEndpoints.removeHost,
      data: params.toJson(),
      parser: (_) {},
    );
  }

  Future<Either<Failure, void>> connectSocket(String token) async {
    try {
      _webSocketChannel = WebSocketChannel.connect(
        Uri.parse('$baseUrl${ApiEndpoints.timetablesSocket}?token=$token'),
      );
      return const Right(null);
    } catch (e) {
      return Left(
        ServerFailure(errorMessage: 'Failed to connect to WebSocket: $e'),
      );
    }
  }

  Stream<SocketResponseModel>? get getSocketStream {
    if (_webSocketChannel == null) {
      return null;
    }
    return _webSocketChannel!.stream.map((message) {
      final decodedMessage =
          jsonDecode(message as String) as Map<String, dynamic>;

      return SocketResponseModel.fromJson(decodedMessage);
    });
  }

  Future<Either<Failure, void>> disconnectSocket() async {
    try {
      await _webSocketChannel?.sink.close();
      _webSocketChannel = null;
      return const Right(null);
    } catch (e) {
      return Left(
        ServerFailure(errorMessage: 'Could not disconnect socket: $e'),
      );
    }
  }

  @override
  Future<Either<Failure, void>> invitation(
    InvitationParams params,
  ) {
    return network.request(
      endpoint: ApiEndpoints.invitation.copyWith(
        url: '${ApiEndpoints.invitation.url}/${params.code}',
      ),
      parser: (_) {},
    );
  }

  @override
  Future<Either<Failure, void>> updateMember(UpdateMemberParams params) {
    return network.request(
      endpoint: ApiEndpoints.updateMember,
      data: params.toJson(),
      parser: (_) {},
    );
  }
}
