import 'package:flutter/cupertino.dart';
import 'package:on_time/core/widgets/responsive/responsive_mixin.dart';
import 'package:on_time/features/timetables/domain/entities/timetable_entity/timetable_entity.dart';
import 'package:on_time/features/timetables/view/widgets/timetables_card.dart';

class TimetablesGrid extends StatelessWidget with Responsive<int> {
  final List<TimetableEntity> timetables;

  const TimetablesGrid({
    required this.timetables,
    super.key,
  });

  @override
  int get small => 2;

  @override
  int? get medium => 3;

  @override
  int? get large => 4;

  @override
  int? get xlarge => 5;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: responsive(context),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.8,
      ),
      itemCount: timetables.length,
      itemBuilder: (context, index) {
        final timetable = timetables[index];
        return TimetableCard(timetable: timetable);
      },
    );
  }
}
