import 'package:flutter/material.dart';

class SocialLoginBtn extends StatelessWidget {
  final String imgName;
  final String name;
  const SocialLoginBtn({
    super.key,
    required this.imgName,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 46,
      child: Center(
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(
                imgName,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

// Social Login
class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        spacing: 15,
        children: [
          SocialLoginBtn(
            imgName: "assets/images/google.png",
            name: "Continue with google",
          ),
          SocialLoginBtn(
            imgName: "assets/images/fb.png",
            name: "Continue with facebook",
          ),
        ],
      ),
    );
  }
}
