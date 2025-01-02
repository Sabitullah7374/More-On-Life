import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialSignUpSection extends StatelessWidget {
  const SocialSignUpSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sign up with',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF36454F),
          ),
        ),
        const SizedBox(width: 8),
        Image.asset(
          'assets/images/google_icon.png',
          width: 28,
          height: 28,
        ),
      ],
    );
  }
}