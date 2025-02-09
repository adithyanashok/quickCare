import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_care/common/screens/home_screen/home_screens.dart';
import 'package:quick_care/common/widgets/button_widgfet.dart';
import 'package:quick_care/common/widgets/custom_textfield.dart';
import 'package:quick_care/features/auth/presentation/bloc/auth_bloc_bloc.dart';
import 'package:quick_care/features/auth/presentation/screens/signin_screen.dart';
import 'package:quick_care/features/auth/presentation/widgets/custom_rich_text.dart';
import 'package:quick_care/features/auth/presentation/widgets/header.dart';
import 'package:quick_care/features/auth/presentation/widgets/social_login_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocConsumer<AuthBlocBloc, AuthBlocState>(
            listener: (context, state) {
              print(state);
              state.whenOrNull(
                authenticated: (authmodel) {
                  print(
                      "object============================================================>");
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreens(),
                    ),
                  );
                },
                error: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(error)),
                  );
                },
              );
            },
            builder: (context, state) {
              return (state is Loading)
                  ? Center(child: CircularProgressIndicator())
                  : Column(
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
                                  context.read<AuthBlocBloc>().add(
                                      AuthBlocEvent.signup(emailController.text,
                                          passwordController.text));
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
                            ),
                          ],
                        )
                      ],
                    );
            },
          ),
        ),
      ),
    );
  }
}
