import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_host_entity.freezed.dart';

@freezed
class EventHostEntity with _$EventHostEntity {
  const factory EventHostEntity({
    @Default(-1) int id,
    @Default(-1) int eventId,
    @Default(-1) int memberId,
  }) = _EventHostEntity;

  const EventHostEntity._();
}
