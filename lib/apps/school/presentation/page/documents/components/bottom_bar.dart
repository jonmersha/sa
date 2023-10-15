
import 'package:awashderash/apps/school/presentation/widget/BigText.dart';
import 'package:awashderash/apps/school/utils/app_color.dart';
import 'package:awashderash/util/dimension.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar( {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimensions.height120,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.height20,
            right: Dimensions.height20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackGroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.height20,
                  right: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.singleColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(
                    text: "00",
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  const Icon(Icons.add),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.height20,
                  right: Dimensions.height20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.height20),
                color: AppColors.mainColor,
              ),
              child: BigText(
                text: "\$0.0 | Add to Cart",
                size: Dimensions.fontSize20,
                color: Colors.white,
              ),
            )
          ],
        ));
  }
}
