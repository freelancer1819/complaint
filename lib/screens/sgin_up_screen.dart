import 'package:complaints/consts/const_colors.dart';
import 'package:complaints/modules/main_layout.dart';
import 'package:complaints/screens/signin_screen.dart';
import 'package:complaints/shared/text_sheard.dart';
import 'package:complaints/widgets/logo_widget.dart';
import 'package:complaints/widgets/my_button.dart';
import 'package:complaints/widgets/persson_data_field.dart';
import 'package:flutter/material.dart';

class SignUP extends StatelessWidget {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var repassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: ListView(
            children: [
              LogoWidget(),
              PersonDataField(
                obscureText: false,
                lable: 'الاسم : ',
                textInputType: TextInputType.name,
                editingController: nameController,
              ),
              PersonDataField(
                obscureText: false,
                lable: 'الهاتف : ',
                textInputType: TextInputType.phone,
                editingController: phoneController,
              ),
              PersonDataField(
                obscureText: false,
                lable: 'الاميل : ',
                textInputType: TextInputType.emailAddress,
                editingController: emailController,
              ),
              PersonDataField(
                obscureText: true,
                lable: 'كلمه المرور : ',
                textInputType: TextInputType.visiblePassword,
                editingController: passController,
              ),
              PersonDataField(
                obscureText: true,
                lable: 'تأكيد  المرور',
                textInputType: TextInputType.visiblePassword,
                editingController: repassController,
              ),
              MyButton(
                function: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Layout(),
                      ));
                },
                text: 'تسجيل جديد',
                hight: 50,
                color: KmainColor,
              ),
              SizedBox(
                height: 20,
              ),
              DoYouHave(
                text1: 'لدي حساب بالفعل ',
                text2: ' تسجيل دخول',
                function: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
