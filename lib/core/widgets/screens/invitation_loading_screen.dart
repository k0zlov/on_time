import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:on_time/core/navigation/routes.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';

class InvitationLoadingScreen extends StatefulWidget {
  const InvitationLoadingScreen({super.key, required this.code});

  final String code;

  @override
  State<InvitationLoadingScreen> createState() =>
      _InvitationLoadingScreenState();
}

class _InvitationLoadingScreenState extends State<InvitationLoadingScreen> {
  @override
  void initState() {
    super.initState();
    _handleInvitation();
  }

  void _handleInvitation() {
    context.read<TimetablesCubit>().onInvitation(widget.code).then((_) {
      if (mounted) {
        context.replaceNamed(AppRoutes.dashboard.name);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: Center(
        child: CupertinoActivityIndicator(radius: 30),
      ),
    );
  }
}
