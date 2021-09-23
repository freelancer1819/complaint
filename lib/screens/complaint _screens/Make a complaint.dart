import 'package:complaints/consts/const_colors.dart';
import 'package:complaints/screens/complaint%20_screens/confirm_complaint.dart';
import 'package:complaints/widgets/complaint_field.dart';
import 'package:complaints/widgets/drop_down_menu.dart';
import 'package:complaints/widgets/my_button.dart';
import 'package:flutter/material.dart';

class MakeAComplaint extends StatefulWidget {
  @override
  _MakeAComplaintState createState() => _MakeAComplaintState();
}

class _MakeAComplaintState extends State<MakeAComplaint> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KsecondColor,
        title: Text('تقديم شكوي'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height * .05,
                ),
                ComplaintField(),
                MyDropDownMenu(type: 1),
                MyDropDownMenu(type: 2),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: size.width - 150,
                    height: size.height * .2,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        style: TextStyle(fontSize: 20, color: Kblack),
                        keyboardType: TextInputType.multiline,
                        maxLines: 8,
                        cursorColor: KmainColor,
                        //maxLength: 1000,
                        decoration: InputDecoration(
                          hintText: 'اكتب شكوتك',
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Kgray),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: KmainColor, width: 1.5)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height*.2,),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MyButton(
                    function: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ConfirmComplaint()));
                    },
                    text: 'ارسال',
                    hight: 50,
                    color: KmainColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
