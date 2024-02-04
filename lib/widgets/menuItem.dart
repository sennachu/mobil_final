import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Icon icon;

  const MenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Text(
              title,
              style: TextStyle(fontFamily: "BebasNeue", color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
