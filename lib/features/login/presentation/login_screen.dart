import 'package:flutter/material.dart';
import 'package:stem_ui/constant/colors.dart';
import 'package:stem_ui/constant/strings.dart';
import 'package:stem_ui/features/login/presentation/widget/login_app_bar.dart';
import 'package:stem_ui/features/login/presentation/widget/login_button.dart';
import 'package:stem_ui/features/login/presentation/widget/login_text_field.dart';
import 'package:stem_ui/features/login/presentation/widget/signup_prompt.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const LoginAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 5),
              const Text(
                AppStrings.welcomeBack,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              LoginTextField(
                hint: AppStrings.username,
                controller: usernameController,
              ),
              const SizedBox(height: 16),
              LoginTextField(
                hint: AppStrings.password,
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(color: AppColors.textGrey),
                ),
              ),
              const SizedBox(height: 24),
              const LoginButton(),
              const Spacer(),
              const SignupPrompt(),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}