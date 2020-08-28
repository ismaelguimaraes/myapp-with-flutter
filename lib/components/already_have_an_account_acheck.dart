import 'package:authApp/constants.dart';
import "package:flutter/material.dart";

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Não tem uma conta? " : "Você possui uma conta? ",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 16,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Registrar-se" : "Logar-se",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
