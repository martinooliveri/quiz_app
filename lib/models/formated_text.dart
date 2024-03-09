import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormatedText extends StatelessWidget {
  const FormatedText(
      this.text, this.color, this.fontWeight, this.fontSize, this.textAlign,
      {super.key});

  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
