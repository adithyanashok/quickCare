import 'package:flutter/material.dart';
import 'package:quick_care/common/widgets/button_widgfet.dart';
import 'package:quick_care/common/widgets/custom_textfield.dart';
import 'package:quick_care/features/auth/presentation/screens/signup_screen.dart';
import 'package:quick_care/features/auth/presentation/widgets/custom_rich_text.dart';
import 'package:quick_care/features/auth/presentation/widgets/header.dart';
import 'package:quick_care/features/auth/presentation/widgets/social_login_button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Header(
                message: "Hi, Welcome back",
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  spacing: 14,
                  children: [
                    CustomTextField(
                      name: "Your Email",
                      icon: Icons.mail_outline_outlined,
                    ),
                    CustomTextField(
                      name: "Password",
                      icon: Icons.lock_outlined,
                    ),
                    SizedBox(height: 1),
                    CustomRoundedButton(
                      onTap: () {},
                      name: "Sign in",
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Expanded(child: Divider()),
                      Text("Or"),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SocialLogin(),
                  Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 31, 129),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomRichText(
                    text: "Don't have an account yet? ",
                    richText: "Sign up",
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
