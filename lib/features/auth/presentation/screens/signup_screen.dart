import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_care/common/widgets/button_widgfet.dart';
import 'package:quick_care/common/widgets/custom_textfield.dart';
import 'package:quick_care/features/auth/presentation/bloc/auth_bloc_bloc.dart';
import 'package:quick_care/features/auth/presentation/screens/signin_screen.dart';
import 'package:quick_care/features/auth/presentation/widgets/custom_rich_text.dart';
import 'package:quick_care/features/auth/presentation/widgets/header.dart';
import 'package:quick_care/features/auth/presentation/widgets/social_login_button.dart';
import 'package:quick_care/features/create_account/presentation/screens/create_account_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocConsumer<AuthBlocBloc, AuthBlocState>(
            listener: (context, state) {
              if (state is Authenticated) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => CreateAccountScreen(),
                  ),
                );
              } else if (state is Error) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Error: ${state.error}"),
                ));
              }
            },
            builder: (context, state) {
              return (state is Loading)
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
                          message: "Create Account",
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            spacing: 14,
                            children: [
                              CustomTextField(
                                controller: nameController,
                                name: "Your name",
                                icon: Icons.person_2_outlined,
                              ),
                              CustomTextField(
                                controller: emailController,
                                name: "Your email",
                                icon: Icons.mail_outline_outlined,
                              ),
                              CustomTextField(
                                controller: passwordController,
                                name: "password",
                                icon: Icons.lock_outlined,
                              ),
                              SizedBox(height: 1),
                              CustomRoundedButton(
                                onTap: () {
                                  context
                                      .read<AuthBlocBloc>()
                                      .add(AuthBlocEvent.signup(
                                        nameController.text,
                                        emailController.text,
                                        passwordController.text,
                                      ));
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
