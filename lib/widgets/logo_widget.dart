import 'package:flutter/material.dart';
class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.center,
      height: size.height * .2,
      child: Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
