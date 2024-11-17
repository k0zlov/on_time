import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:on_time/core/navigation/routes.dart';
import 'package:on_time/features/auth/view/cubit/auth_cubit.dart';
import 'package:on_time/features/auth/view/widgets/auth_button.dart';
import 'package:on_time/features/auth/view/widgets/auth_form.dart';
import 'package:on_time/features/auth/view/widgets/auth_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthCubit cubit = context.read<AuthCubit>();
    final AuthState state = context.select((AuthCubit cubit) => cubit.state);

    return CupertinoPageScaffold(
      child: Center(
        child: AuthForm(
          fields: <Widget>[
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            AuthTextField(
              label: 'Email',
              placeholder: 'Enter your email',
              text: state.loginParams.email,
              onChanged: cubit.onLoginEmailChanged,
            ),
            AuthTextField(
              label: 'Password',
              placeholder: 'Enter your password',
              isPassword: true,
              text: state.loginParams.password,
              onChanged: cubit.onLoginPasswordChanged,
            ),
            const SizedBox(height: 16),
            AuthButton(
              label: 'Sign In',
              onPressed: cubit.onLogin,
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                context.replaceNamed(AppRoutes.registration.name);
              },
              child: const Text(
                "Don't have an account? Register here.",
                style: TextStyle(color: CupertinoColors.activeBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
