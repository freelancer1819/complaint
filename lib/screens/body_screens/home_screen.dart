import 'package:complaints/consts/const_colors.dart';
import 'package:complaints/screens/complaint%20_screens/Make%20a%20complaint.dart';
import 'package:complaints/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height*.05,
            ),
            Text(
              "مرحبا بك في شكوتي ",
              style: GoogleFonts.almarai(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height*.2,
            ),
            MyButton(
              function: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>MakeAComplaint(),
                ));
              },
              text: "تقديم شكوي",
              hight: 100,
              color: KmainColor,
            ),
          ],
        ),
      ),
    );
  }
}
