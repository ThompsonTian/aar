import 'package:aar/Screens/Login/components/background.dart';
import 'package:aar/Screens/Signup/signup_screen.dart';
import 'package:aar/Components/already_have_an_account_check.dart';
import 'package:aar/components/rounded_button.dart';
import 'package:aar/components/rounded_input_field.dart';
import 'package:aar/components/rounded_password_field.dart';
import 'package:aar/components/text_filed_container.dart';
import 'package:aar/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //final TextEditingController emailController = TextEditingController();
    //final TextEditingController passwordController = TextEditingController();
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/logo.svg',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
              //emailController: emailController,
            ),
            RoundedPasswordField(
              onChanged: (value) {},
             // passwordController: passwordController,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                /*
               context.read<AuthenticationService>().logIn(
                     email: emailController.text.trim(),
                     password: passwordController.text.trim(),
                    );
                */
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
