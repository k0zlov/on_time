import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/core/widgets/buttons/logo_button.dart';
import 'package:on_time/features/auth/view/cubit/auth_cubit.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final currentUser = context.select(
      (AuthCubit cubit) => cubit.state.currentUser,
    );

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.darkBackgroundGray,
        middle: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const LogoButton(),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: Text(
                  '${currentUser.name} ${currentUser.lastName}',
                  style: const TextStyle(
                    color: CupertinoColors.activeBlue,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      child: SafeArea(
        child: child,
      ),
    );
  }
}
