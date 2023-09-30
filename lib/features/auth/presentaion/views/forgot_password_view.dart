import 'package:flutter/material.dart';
import 'package:shop_app/features/auth/presentaion/widgets/forgot_password_view_body.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotPasswordViewBody(),
    );
  }
}