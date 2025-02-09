import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:quick_care/common/styles/styles.dart';
import 'package:quick_care/common/widgets/custom_textfield.dart';
import 'package:quick_care/common/widgets/doctor_card.dart';
import 'package:quick_care/features/search/presentation/widgets/choice_chip_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: AppTextStyle.titleStyle,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [
          CustomTextField(
            controller: controller,
            name: "Search",
            icon: HugeIcons.strokeRoundedSearch01,
          ),
          ChoiceChipList(),
          Text(
            "589 founds",
            style: AppTextStyle.titleStyle.copyWith(
              fontSize: 16,
            ),
          ),
          Column(
            spacing: 8,
            children: List.generate(
              10,
              (index) {
                return DocCardHorizontal();
              },
            ),
          )
        ],
      ),
    );
  }
}
