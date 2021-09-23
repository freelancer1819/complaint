import 'package:complaints/consts/const_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompliantReply extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KmainColor,
        elevation: 0,
        title: Text('رد الشكوي'),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: ListView(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: size.height * .1,
              ),
              buildPaddingReply(size,text: 'إنقطاع الكهرباء'),
              buildPaddingReply(size,text: 'نوع الشكوي'),
              buildPaddingReply(size,text: 'الجة المقدم إليها'),
              Text('الرد'),
              buildPaddingReply(size,text: 'تم استلام شكوتك و سنقوم بحل المشكله في اسرع وقت ',color: Colors.red),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: size.width*.8,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Kgray)
                  ),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      cursorColor: KmainColor,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 15),
                        suffixIcon: FloatingActionButton(
                          onPressed: (){},
                          child: Icon(Icons.send),
                          mini: true,
                          backgroundColor: KsecondColor,
                          elevation: 0,
                        )
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildPaddingReply(Size size,{text,color=KmainColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        alignment: Alignment.centerRight,
        padding: EdgeInsets.all(10),
        width: size.width * .8,
        //height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: GoogleFonts.almarai(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
