import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/common/widgets/category_card.dart';
import 'package:quick_care/common/widgets/doctor_card.dart';
import 'package:quick_care/common/widgets/section_title.dart';
import 'package:quick_care/core/category.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: AppTextStyle.descriptionStyle,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on_rounded),
                Text(
                  "Seattle, USA",
                  style: AppTextStyle.titleStyle,
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            spacing: 12,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  filled: true,
                  fillColor: HexColor('#E5E7EB'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/banner.png"),
              ),
              SectionTitle(
                title: "Categories",
                subtitle: "see all",
              ),
              SizedBox(
                height: 230,
                child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final cat = categories[index];
                    return CategoryCard(
                      category: cat.category,
                      image: cat.image,
                    );
                  },
                ),
              ),
              SectionTitle(
                title: "Top Rated Doctors",
                subtitle: "see all",
              ),
              SizedBox(
                height: 320,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return DoctorCard(
                      image: "assets/images/doc1.png",
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 10,
                ),
              ),
              SectionTitle(
                title: "Dentistry",
                subtitle: "see all",
              ),
              SizedBox(
                height: 320,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return DoctorCard(
                      image: "assets/images/doc2.png",
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
