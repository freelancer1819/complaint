import 'package:complaints/consts/const_colors.dart';
import 'package:complaints/widgets/edit_widget.dart';
import 'package:complaints/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: 150,
                height: 150,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment(0, 0),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                      ),
                    ),
                    Align(
                        alignment: Alignment(1, 1),
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.camera_alt),
                          backgroundColor: KmainColor,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "محمد احمد",
                  style: GoogleFonts.almarai(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Kblack,
                  ),
                ),
              ),
              EditPersonData(
                text1: 'رقم الهاتف : ',
                text2: "01036578945",
              ),
              EditPersonData(
                text1: 'الاميل : ',
                text2: "user1@gamil.com",
              ),
              SizedBox(height: 55,),
              MyButton(
                function: (){},
                text: 'تعديل',
                hight: 55,
                color:KmainColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
