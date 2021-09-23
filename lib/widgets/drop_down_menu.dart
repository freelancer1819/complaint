import 'package:complaints/consts/const_colors.dart';
import 'package:complaints/models/lists_of_drop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyDropDownMenu extends StatefulWidget {

  final int type;

  const MyDropDownMenu({Key? key,required this.type}) : super(key: key);
  @override
  _MyDropDownMenuState createState() => _MyDropDownMenuState();
}

class _MyDropDownMenuState extends State<MyDropDownMenu> {

  String dropdownValue ='عنوان الشكوي';
  String dropdownValue2=  'والجهة المسؤوله';

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: size.width - 150,
        height:50,
        child: DropdownButton(
          onTap: () {},
          items:widget.type==1? compType.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Container(
                  padding: EdgeInsets.all(10),
                  width: size.width*.5,
                  child: Text(value)),
            );
          }).toList()
          :goveType.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Container(
                padding: EdgeInsets.all(10),
                  width: size.width*.5,
                  child: Text(value)),
            );
          }).toList(),
          value:widget.type==1 ?dropdownValue:dropdownValue2,
          icon: const Icon(Icons.arrow_downward_rounded),
          iconSize: 24,
          elevation: 16,
          style: GoogleFonts.almarai(
              fontWeight: FontWeight.w500,
              color: Kblack,
              fontSize: 15
          ),
          onChanged: (String? newValue) {
            setState(() {
             if(widget.type==1)
               dropdownValue=newValue!;
             else
               dropdownValue2=newValue!;
            });
          },
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Kgray),
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
