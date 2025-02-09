import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/common/widgets/button_widgfet.dart';
import 'package:quick_care/common/widgets/custom_textfield.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          "Fill Your Profile",
          style: AppTextStyle.titleStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            SizedBox(height: 15),
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Color(0xFFF3F4F6),
                  child: Icon(
                    Icons.person,
                    size: 120,
                    color: Colors.grey[350],
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 10,
                  child: Icon(
                    Icons.add_a_photo,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(23.0),
              child: Column(
                spacing: 14,
                children: [
                  CustomTextField(
                    controller: controller,
                    name: "Your Name",
                    icon: Icons.person_outline,
                  ),
                  CustomTextField(
                    controller: controller,
                    name: "Date of birth",
                    icon: Icons.calendar_month,
                  ),
                  CustomTextField(
                    controller: controller,
                    name: "Phone",
                    icon: Icons.phone,
                  ),
                  GenderDropdown(
                    hintText: "Gender",
                    onChanged: (value) {},
                    items: ["Male", "Female", "Other"],
                  ),
                  GenderDropdown(
                    hintText: "Select role",
                    onChanged: (value) {},
                    items: ["Doctor", "Patient"],
                  ),
                  SizedBox(height: 1),
                  CustomRoundedButton(onTap: () {}, name: "Create account"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
