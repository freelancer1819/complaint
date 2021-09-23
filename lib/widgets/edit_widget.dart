import 'package:complaints/consts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPersonData extends StatelessWidget {
  final String text1;
  final String text2;

  const EditPersonData({
    Key? key,
   required this.text1,
   required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListTile(
      title: buildText(text2, 20),
      leading: buildText(text1, 18),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.edit),
      ),
    );
  }

  Text buildText(text, size) {
    return Text(
      text,
      style: GoogleFonts.almarai(
        fontSize: size.toDouble(),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
