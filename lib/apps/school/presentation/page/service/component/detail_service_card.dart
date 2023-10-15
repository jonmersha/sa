import 'package:awashderash/apps/school/model/service_detail_model.dart';
import 'package:awashderash/apps/school/presentation/widget/BigText.dart';
import 'package:awashderash/apps/school/presentation/widget/SmalText.dart';
import 'package:awashderash/apps/school/utils/app_color.dart';
import 'package:awashderash/util/dimension.dart';
import 'package:flutter/material.dart';

class DetailserviceCard extends StatelessWidget {
  final ServiceDetail serviceDetail;
  const DetailserviceCard({
    Key? key, required this.serviceDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: serviceDetail.serviceName!,
          size: Dimensions.fontSize20,
          color: AppColors.mainColor,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        SmallText(
          text: serviceDetail.seviceDescription!,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        const Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
        )
      ],
    );
  }
}
