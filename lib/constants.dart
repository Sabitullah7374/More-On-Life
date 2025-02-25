import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kDefaultRounding = 20.0;

final kInputFieldDecoration = InputDecoration(
  filled: true,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(kDefaultRounding),
    borderSide: BorderSide.none,
  ),
);

const blueishColor = Color(0xFFFDCF0FF);
const darkBlueishColor = Color(0xFFFB0E1F1);
const yellowishColor = Color(0xFFFF8E7BA);
const greenishColor = Color(0xFFFD2F8BA);
const purplishColor = Color(0XFFFBAC4F8);

final roboto = GoogleFonts.roboto();
final roboto_bold = TextStyle(
  fontFamily: GoogleFonts.roboto().fontFamily,
  fontWeight: FontWeight.bold,
);
final poppins = GoogleFonts.poppins();
final poppins_bold = TextStyle(
  fontFamily: GoogleFonts.poppins().fontFamily,
  fontWeight: FontWeight.bold,
);
const futura = TextStyle(fontFamily: 'Futura');
const futura_bold = TextStyle(
  fontFamily: 'Futura',
  fontWeight: FontWeight.bold,
);
const futura_medium = TextStyle(
  fontFamily: 'Futura',
  fontWeight: FontWeight.w200,
);
