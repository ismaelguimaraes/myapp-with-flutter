import 'package:authApp/components/already_have_an_account_acheck.dart';
import 'package:authApp/components/roundedButton.dart';
import 'package:authApp/components/rounded_input_field.dart';
import 'package:authApp/components/rounded_password_field.dart';
import 'package:authApp/constants.dart';
import 'package:authApp/screens/login/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.30,
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          RoundedInput(
            hintText: 'Insira seu e-mail',
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          AlreadyHaveAnAccountCheck(
            press: () {},
          ),
        ],
      ),
    );
  }
}
