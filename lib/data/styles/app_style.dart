import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color primaryColor = Colors.white;
  static Color secondaryColor = Colors.purple.shade900;
  static Color h1Color = const Color(0xFF403B36);
  static Color h2Color = const Color(0xFF595550);
  static Color textColor = const Color(0xFF403B36);

  static TextStyle appBarTitle = GoogleFonts.nunito(
    fontSize: 20.0,
    fontWeight: FontWeight.w900,
    color: primaryColor,
  );

  static TextStyle boldText = GoogleFonts.nunito(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: h1Color,
  );

  static TextStyle h1Text = GoogleFonts.nunito(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: h1Color,
  );
}
