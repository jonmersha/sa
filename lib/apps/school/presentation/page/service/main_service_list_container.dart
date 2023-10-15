import 'package:awashderash/apps/school/model/service_model.dart';
import 'package:awashderash/apps/school/presentation/page/service/detail_service_list.dart';
import 'package:awashderash/apps/school/presentation/widget/BigText.dart';
import 'package:awashderash/apps/school/presentation/widget/app_icon.dart';
import 'package:awashderash/apps/school/presentation/widget/expandable_text.dart';
import 'package:awashderash/apps/school/utils/app_color.dart';
import 'package:awashderash/apps/school/utils/app_constants.dart';
import 'package:awashderash/util/dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/main_branch_operation_page.dart';

class DetailServiceListContainer extends StatelessWidget {
  final Service serviceModel;
  //final ServiceListDetailController detailedServiceController;
  const DetailServiceListContainer({Key? key, required this.serviceModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        Get.to(()=>const MainOperationPage(),transition: Transition.rightToLeftWithFade,duration: const Duration(milliseconds: 800));
                      },
                      child: const AppIcon(iconData: Icons.clear,backGroundColor: AppColors.mainColor,)
                  ),
                  const AppIcon(iconData: Icons.shopping_cart_outlined,),
                ],
              ),
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(Dimensions.height20),
                child:Container(
                  width: double.maxFinite,
                  height: 50,
                  alignment: Alignment.center,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          topLeft: Radius.circular(Dimensions.radius20)
                      ),
                      color: Colors.white
                  ),

                  child:  BigText(text: serviceModel.name!,size: Dimensions.fontSize26, ),
                )
            ),
            pinned: true,
            backgroundColor: Colors.amber,
            expandedHeight: Dimensions.height200,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  AppConstants.IMAGE_URL+serviceModel.imagePath!,
                  width: double.maxFinite,
                  fit: BoxFit.cover,

                )
            ),
          ),
          SliverToBoxAdapter(

            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                    child:  ExpandableTextWidget(
                        text: serviceModel.name!)
                ),
               // Text("${ serviceModel.serviceDescription!}: \n Related Service Displayed here"),
                DetailServiceList(id: serviceModel.id!,)
              ],
            ),

          )
        ],

      ),
     // bottomNavigationBar:
      //NewBottomBarr(),
    );
  }
}

