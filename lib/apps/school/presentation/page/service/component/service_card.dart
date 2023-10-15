import 'package:awashderash/apps/school/model/service_model.dart';
import 'package:awashderash/apps/school/presentation/widget/BigText.dart';
import 'package:awashderash/apps/school/presentation/widget/SmalText.dart';
import 'package:awashderash/apps/school/utils/app_color.dart';
import 'package:awashderash/util/dimension.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  const ServiceCard({
    Key? key, required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: service.serviceName!,
          size: Dimensions.fontSize20,
          color: AppColors.mainColor,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        SmallText(
          text: service.serviceDescription!,
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
