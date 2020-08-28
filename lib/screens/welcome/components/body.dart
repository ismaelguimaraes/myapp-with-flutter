import 'package:flutter/material.dart';
import 'package:authApp/components/roundedButton.dart';
import 'package:authApp/screens/welcome/components/background.dart';
import 'package:authApp/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Pe

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to MyApp",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () => {},
            ),
            RoundedButton(
              text: "REGISTRAR-SE",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () => {},
            )
          ],
        ),
      ),
    );
  }
}
