import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/core/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: AppTextStyle.titleStyle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Color(0xFFF3F4F6),
                      foregroundImage: AssetImage('assets/images/portrait.jpg'),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 10,
                      child: Icon(
                        Icons.add_a_photo,
                        color: AppColors.midblue,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Daniel Martinez",
                  style: AppTextStyle.titleStyle.copyWith(fontSize: 15),
                ),
                SizedBox(height: 6),
                Text(
                  "+123 549584059",
                  style: AppTextStyle.descriptionStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ProfileLinks(
              title: "Edit Profile",
              icon: Icons.edit,
            ),
            ProfileLinks(
              title: "Favorite",
              icon: Icons.favorite_border_rounded,
            ),
            ProfileLinks(
              title: "Notification",
              icon: Icons.notifications_on_outlined,
            ),
            ProfileLinks(
              title: "Logout",
              icon: Icons.logout_rounded,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileLinks extends StatelessWidget {
  final String title;
  final IconData icon;
  const ProfileLinks({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                spacing: 10,
                children: [
                  Icon(
                    icon,
                    color: AppColors.grey600,
                  ),
                  Text(
                    title,
                    style: AppTextStyle.titleStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: AppColors.grey600,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.grey600,
                size: 16,
              )
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
