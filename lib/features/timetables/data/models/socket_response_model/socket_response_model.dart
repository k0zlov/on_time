import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:on_time/features/timetables/data/models/timetable_model/timetable_model.dart';
import 'package:on_time/features/timetables/domain/entities/socket_response_entity/socket_response_entity.dart';

part 'socket_response_model.freezed.dart';

part 'socket_response_model.g.dart';

@freezed
class SocketResponseModel with _$SocketResponseModel {
  const factory SocketResponseModel({
    @JsonKey(name: 'eventType') required String type,
    @Default([]) List<TimetableModel> data,
  }) = _SocketResponseModel;

  const SocketResponseModel._();

  factory SocketResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SocketResponseModelFromJson(json);

  SocketResponseEntity toEntity() => SocketResponseEntity(
        type: type == 'update'
            ? SocketResponseType.update
            : SocketResponseType.delete,
        data: [...data.map((e) => e.toEntity())],
      );
}
