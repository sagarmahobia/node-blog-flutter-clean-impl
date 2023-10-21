
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TheAppBar extends AppBar {
  TheAppBar({
    Key? key,
    required String title,
    List<Widget>? actions,
  }) : super(
          key: key,
          title: Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              color: Colors.blueGrey.shade900,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.blueGrey.shade900,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: actions,
        );
}
