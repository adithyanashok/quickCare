import 'package:flutter/material.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/common/widgets/button_widgfet.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreens extends StatefulWidget {
  const OnboardScreens({super.key});

  @override
  State<OnboardScreens> createState() => _OnboardScreensState();
}

class _OnboardScreensState extends State<OnboardScreens> {
  final controller = PageController(initialPage: 0);
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          _page(
            "doc1.jpg",
            "Thousands of online specialists",
            "Explore a Vast Array of Online Medical Specialists,Offering an Extensive Range of Expertise Tailored to Your Healthcare Needs.",
          ),
          _page(
            "doc3.jpg",
            "Connect With specialists",
            "Connect with Specialized Doctors Online for Convenient and Comprehensive Medical Consultations.",
          ),
          _page(
            "doc4.jpg",
            "Meet Doctors Online",
            "Connect with Specialized Doctors Online for Convenient and Comprehensive Medical Consultations.",
          ),
        ],
      ),
    );
  }

  Stack _page(String imgName, String title, String desc) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.7,
          child: Image.asset(
            'assets/images/$imgName',
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppTextStyle.titleStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    left: 35,
                    right: 35,
                  ),
                  child: Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.descriptionStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25.0,
                    horizontal: 35,
                  ),
                  child: CustomRoundedButton(
                    name: "Next",
                    onTap: () {
                      if (controller.page?.toInt() == 2) {
                        // Handle end of onboarding logic
                      } else {
                        controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotWidth: 8,
                    dotHeight: 8,
                    activeDotColor: Color(0xFF1C2A3A),
                  ),
                  onDotClicked: (index) {
                    controller.animateToPage(
                      index,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Color(0xFF374151),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
