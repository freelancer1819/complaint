import 'package:complaints/consts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoYouHave extends StatelessWidget {
  final String text1;
  final String text2;
  final Function function;

  const DoYouHave({
    Key? key,
   required this.text1,
   required this.text2,
   required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildText(text1),
        GestureDetector(
          onTap: ()=>function(),
          child: buildText(text2, color: KsecondColor),
        )
      ],
    );
  }

  Text buildText(text, {color = Colors.black}) {
    return Text(
      text,
      style: GoogleFonts.almarai(
        fontSize: 15,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
