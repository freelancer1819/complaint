import 'package:complaints/consts/const_colors.dart';
import 'package:complaints/modules/main_layout.dart';
import 'sgin_up_screen.dart';
import 'package:complaints/shared/text_sheard.dart';
import 'package:complaints/widgets/logo_widget.dart';
import 'package:complaints/widgets/my_button.dart';
import 'package:complaints/widgets/persson_data_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  var phoneController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .1,
              ),
              LogoWidget(),
              SizedBox(
                height: size.height * .1,
              ),
              PersonDataField(
                obscureText: false,
                textInputType: TextInputType.phone,
                editingController: phoneController,
                lable: 'الهاتف : ',
              ),
              PersonDataField(
                obscureText: true,
                textInputType: TextInputType.visiblePassword,
                editingController:passController,
                lable: 'كلمة المرور : ',
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'نسيت كلمه السر  ',
                    style: GoogleFonts.almarai(
                      fontSize: 15,
                      color: Kblack,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              MyButton(
                function: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context)=>Layout(),
                  ));
                },
                text: 'دخول',
                hight: 50,
                color: KsecondColor,
              ),
              SizedBox(
                height: size.height * .05,
              ),
              DoYouHave(
                text1: 'ليس لدي حساب   ',
                text2: 'تسجيل جديد',
                function: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignUP()));
                },
              ),
              SizedBox(
                height: size.height * .04,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
