import 'package:complaints/consts/const_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonDataField extends StatelessWidget {
  final String lable;
  final TextInputType textInputType;

  final TextEditingController editingController;
  final bool obscureText;

  const PersonDataField({
    Key? key,
    required this.obscureText,
   required this.lable,
   required this.textInputType,

   required this.editingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          lable,
          style: GoogleFonts.almarai(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            width: size.width - 150,
            height: 60,
            child: Card(
              elevation: 0,
              child: TextFormField(
                controller: editingController,
                obscureText: obscureText,
                style: GoogleFonts.almarai(fontSize: 20),
                keyboardType: textInputType,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(color: KmainColor, width: 1.5)),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Kgray),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Kgray),
                    ),
                    border: InputBorder.none),
              ),
            ),
          ),
        )
      ],
    );
  }
}
