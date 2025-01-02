import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/progress_indicator.dart';
import 'widgets/email_input.dart';
import 'widgets/continue_button.dart';
import 'widgets/social_sign_up.dart';
import 'widgets/login_prompt.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 29),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 342,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 30),
              Text(
                'Create account',
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF36454F),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              const SignUpProgressIndicator(),
              const SizedBox(height: 45),
              const EmailInputForm(),
              const SizedBox(height: 31),
              const ContinueButton(),
              const SizedBox(height: 31),
              const SocialSignUpSection(),
              const SizedBox(height: 14),
              const Divider(color: Color(0xFFD9D9D9)),
              const SizedBox(height: 16),
              const LoginPrompt(),
            ],
          ),
        ),
      ),
    );
  }
}