import 'package:complaints/consts/const_colors.dart';
import 'package:complaints/models/lists_of_drop.dart';
import 'package:complaints/screens/complaint%20_screens/reply_compliant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotifiyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.builder(
        itemCount: CompliantList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=>CompliantReply()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                padding: EdgeInsets.all(10),
                width: size.width - 100,
                height: size.height * .18,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: KmainColor.withOpacity(.4),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(10, 10),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      buildText('تم الرد علي شكوي',),
                      SizedBox(
                        width: 10,
                      ),
                      buildText( CompliantList[index].name,color: KsecondColor),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildText(CompliantList[index].time),
                          SizedBox(
                            height: 10,
                          ),
                          buildText(CompliantList[index].date,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Text buildText(text,{color=Kblack}) {
    return Text(
      text,
      style: GoogleFonts.almarai(
          fontSize: 17, fontWeight: FontWeight.bold, color: color),
    );
  }
}
