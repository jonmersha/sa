

import 'package:awashderash/apps/school/model/document_section_model.dart';
import 'package:awashderash/apps/school/presentation/widget/BigText.dart';
import 'package:awashderash/apps/school/presentation/widget/SmalText.dart';
import 'package:awashderash/apps/school/utils/app_color.dart';
import 'package:awashderash/util/dimension.dart';
import 'package:flutter/material.dart';


class SectionCard extends StatelessWidget {
  final Section section;
  const SectionCard({
    Key? key, required this.section,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          BigText(
            text: section.sectionName!,
            size: Dimensions.fontSize20,
            color: AppColors.mainColor,
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
          SmallText(
            text: section.sectionDescription!,
            size: 12,color: AppColors.paraColor,
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
        ],
      ),
    );
  }
}
