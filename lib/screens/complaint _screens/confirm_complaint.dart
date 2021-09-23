import 'package:complaints/consts/const_colors.dart';
import 'package:complaints/modules/main_layout.dart';
import 'package:complaints/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmComplaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: size.width * .8,
              height: size.height * .2,
              decoration: BoxDecoration(
                color: KmainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'تم إرسال شكوتك بنجاح لموقع الهدف \n سنوافيك بتفاصيل الرد في اقرب وقت',
                style: GoogleFonts.almarai(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Kwight,
                    height: 2),
              ),
            ),
           SizedBox(height: size.height*.2,),
            MyButton(
              function: (){
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context)=>Layout())
                );
              },
              text: 'العودة إلي الرئسية',
              hight: 55,
              color: KsecondColor,
            ),
          ],
        ),
      ),
    );
  }
}
