import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Yatayda ortala
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // Dikeyde ortala
            children: [
              Text(
                title,
                style: GoogleFonts.raleway(
                  color: Color.fromARGB(255, 56, 56, 56),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
