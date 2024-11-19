import 'package:flutter/cupertino.dart';
import 'package:on_time/features/timetables/domain/entities/member_entity/member_entity.dart';

class AddHostModal extends StatelessWidget {
  const AddHostModal({
    super.key,
    required this.members,
    required this.onHostSelected,
  });

  final List<MemberEntity> members;
  final ValueChanged<int> onHostSelected;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: CupertinoColors.darkBackgroundGray,
          borderRadius: BorderRadius.circular(12),
        ),
        width: MediaQuery.of(context).size.width * 0.15,
        height: 400,
        child: Column(
          children: [
            const Text(
              'Add Host',
              style: TextStyle(
                color: CupertinoColors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: members.length,
                itemBuilder: (context, index) {
                  final member = members[index];
                  return CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => onHostSelected(member.id),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey5,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '${member.name} ${member.lastName}',
                        style: const TextStyle(
                          color: CupertinoColors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            CupertinoButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(color: CupertinoColors.destructiveRed),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
