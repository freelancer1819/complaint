import 'package:complaints/consts/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ComplaintField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: size.width - 150,
        height:50,
        child: Card(
          elevation: 0,
          child: TextFormField(

            style: GoogleFonts.almarai(fontSize: 20),
            keyboardType: TextInputType.text,
            cursorColor: KmainColor,
            decoration: InputDecoration(
              labelText: 'عنوان الشكوي',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    BorderSide(color: KmainColor, width: 1.5)),
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Kgray),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Kgray),
                ),
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
