import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/button_background.png',
          width: double.infinity,
          fit: BoxFit.contain,
        ),
        Text(
          'Continue',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color(0xFFD3D3D3),
          ),
        ),
      ],
    );
  }
}
