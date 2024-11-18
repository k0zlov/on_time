import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:on_time/core/navigation/routes.dart';
import 'package:on_time/features/auth/view/cubit/auth_cubit.dart';
import 'package:on_time/features/auth/view/widgets/auth_button.dart';
import 'package:on_time/features/auth/view/widgets/auth_form.dart';
import 'package:on_time/features/auth/view/widgets/auth_text_field.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthCubit cubit = context.read<AuthCubit>();
    final AuthState state = context.select((AuthCubit cubit) => cubit.state);

    return CupertinoPageScaffold(
      child: Center(
        child: AuthForm(
          fields: <Widget>[
            const Text(
              'Registration',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            AuthTextField(
              label: 'Name',
              placeholder: 'Enter your name',
              text: state.registerParams.name,
              onChanged: cubit.onRegisterNameChanged,
            ),
            AuthTextField(
              label: 'Last Name',
              placeholder: 'Enter your last name',
              text: state.registerParams.lastName,
              onChanged: cubit.onRegisterLastNameChanged,
            ),
            AuthTextField(
              label: 'Email',
              placeholder: 'Enter your email',
              text: state.registerParams.email,
              onChanged: cubit.onRegisterEmailChanged,
            ),
            AuthTextField(
              label: 'Password',
              placeholder: 'Enter your password',
              isPassword: true,
              text: state.registerParams.password,
              onChanged: cubit.onRegisterPasswordChanged,
            ),
            const SizedBox(height: 16),
            AuthButton(
              label: 'Register',
              onPressed: cubit.onRegister,
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                context.replaceNamed(AppRoutes.login.name);
              },
              child: const Text(
                'Already registered? Sign in here.',
                style: TextStyle(color: CupertinoColors.activeBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
