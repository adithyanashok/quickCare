import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_care/common/screens/bottom_nav.dart';
import 'package:quick_care/common/widgets/button_widgfet.dart';
import 'package:quick_care/common/widgets/custom_textfield.dart';
import 'package:quick_care/features/auth/presentation/bloc/auth_bloc_bloc.dart';
import 'package:quick_care/features/auth/presentation/screens/signup_screen.dart';
import 'package:quick_care/features/auth/presentation/widgets/custom_rich_text.dart';
import 'package:quick_care/features/auth/presentation/widgets/header.dart';
import 'package:quick_care/features/auth/presentation/widgets/social_login_button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: BlocConsumer<AuthBlocBloc, AuthBlocState>(
        listener: (context, state) {
          if (state is Authenticated) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => BottomNav(),
              ),
            );
          } else if (state is Error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Error: ${state.error}"),
            ));
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: SingleChildScrollView(
              child: (state is Loading)
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
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
                                controller: emailController,
                                name: "Your Email",
                                icon: Icons.mail_outline_outlined,
                              ),
                              CustomTextField(
                                controller: passwordController,
                                name: "Password",
                                icon: Icons.lock_outlined,
                              ),
                              SizedBox(height: 1),
                              CustomRoundedButton(
                                onTap: () {
                                  print("Initated at signin screen");
                                  context
                                      .read<AuthBlocBloc>()
                                      .add(AuthBlocEvent.signin(
                                        emailController.text,
                                        passwordController.text,
                                      ));
                                },
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
          );
        },
      ),
    );
  }
}
