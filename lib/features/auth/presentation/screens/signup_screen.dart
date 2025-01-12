import 'package:flutter/material.dart';
import 'package:quick_care/common/screens/home_screen/home_screens.dart';
import 'package:quick_care/common/widgets/button_widgfet.dart';
import 'package:quick_care/common/widgets/custom_textfield.dart';
import 'package:quick_care/features/auth/presentation/screens/signin_screen.dart';
import 'package:quick_care/features/auth/presentation/widgets/custom_rich_text.dart';
import 'package:quick_care/features/auth/presentation/widgets/header.dart';
import 'package:quick_care/features/auth/presentation/widgets/social_login_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                message: "Create Account",
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  spacing: 14,
                  children: [
                    CustomTextField(
                      name: "Your Name",
                      icon: Icons.person_outline_rounded,
                    ),
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
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomeScreens(),
                          ),
                        );
                      },
                      name: "Create account",
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
                  CustomRichText(
                    text: 'Do you have an account? ',
                    richText: "Sign in",
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SigninScreen(),
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
