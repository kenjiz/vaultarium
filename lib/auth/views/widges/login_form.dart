import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_components/ui_components.dart';
import 'package:vaultarium/core/app_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onLogin() {
    // mock to proceed
    context.goNamed(AppRouter.portfolio);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: Dimens.s24,
      children: [
        EmailField(
          controller: _emailController,
          labelText: 'Email address',
          hintText: 'Enter your email address',
          textInputAction: TextInputAction.next,
        ),
        PasswordField(
          controller: _passwordController,
          label: 'Password',
          hintText: 'Enter your password',
        ),
        PrimaryButton(onPressed: _onLogin, text: 'Login'),
      ],
    );
  }
}
