import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppResources {
  static final primaryCommon = Color(0xFFFF941A);
  static final greyCommon = Color(0xFF585666);
  static final deleteCommon = Color(0xFFE83F5B);
  static final headingTexts = Color(0xFF585666);
  static final bodyTexts = Color(0xFF706E7A);
  static final strokeItems = Color(0xFFE3E3E6);
  static final shapeItems = Color(0xFFFAFAFC);
  static final backgroundItems = Color(0xFFFFFFFF);
  static final input = Color(0xFFB1B0B8);
  static final secundary = Color(0xFF585666);

  static final primary = Color(0xFFFF941A);
  static final grey = Color(0xFF585666);
  static final delete = Color(0xFF585666);
  static final heading = Color(0xFF585666);
  static final body = Color(0xFF706E7A);
  static final stroke = Color(0xFFE3E3E6);
  static final shape = Color(0xFFFAFAFC);
  static final background = Color(0xFFFFFFFF);

  // resource for texts

  static final titlehome = GoogleFonts.lexendDeca(
      fontWeight: FontWeight.w600, fontSize: 32, color: headingTexts);

  static final titleHome = GoogleFonts.lexendDeca(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: heading,
  );
  static final titleRegular = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: heading,
  );
  static final titleBoldHeading = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: heading,
  );
  static final titleBoldBackground = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: background,
  );
  static final titleListTile = GoogleFonts.lexendDeca(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: heading,
  );
  static final trailingRegular = GoogleFonts.lexendDeca(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: heading,
  );
  static final trailingBold = GoogleFonts.lexendDeca(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: heading,
  );
  static final buttonPrimary = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: primary,
  );
  static final buttonHeading = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: heading,
  );
  static final buttonGray = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: grey,
  );
  static final buttonBackground = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: background,
  );
  static final buttonBoldPrimary = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: primary,
  );
  static final buttonBoldHeading = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: heading,
  );
  static final buttonBoldGray = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: grey,
  );
  static final buttonBoldBackground = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: background,
  );
  static final captionBackground = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: background,
  );
  static final captionShape = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: shape,
  );
  static final captionBody = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: body,
  );
  static final captionBoldBackground = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: background,
  );
  static final captionBoldShape = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: shape,
  );
  static final captionBoldBody = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: body,
  );
  static final inputs = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: input,
  );

//resource images

  static const logoFull = "assets/images/logofull.png";
  static const logomini = "assets/images/logomini.png";
  static const union = "assets/images/union.png";
  static const person = "assets/images/person.png";
  static const google = "assets/images/google.png";
}
