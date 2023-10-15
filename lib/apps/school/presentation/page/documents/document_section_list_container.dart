import 'package:awashderash/apps/school/controller/DocumentController.dart';
import 'package:awashderash/apps/school/controller/document_section_controller.dart';
import 'package:awashderash/apps/school/model/document_model.dart';
import 'package:awashderash/apps/school/presentation/page/documents/document_section.dart';
import 'package:awashderash/apps/school/presentation/widget/BigText.dart';
import 'package:awashderash/apps/school/presentation/widget/app_icon.dart';
import 'package:awashderash/apps/school/presentation/widget/expandable_text.dart';
import 'package:awashderash/apps/school/utils/app_color.dart';
import 'package:awashderash/apps/school/utils/app_constants.dart';
import 'package:awashderash/util/dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/main_branch_operation_page.dart';

class DocumentSectionListContainer extends StatelessWidget {
  final Document documentModel;
  final DocumentController documentSectionController;
  const DocumentSectionListContainer({Key? key, required this.documentModel, required this.documentSectionController}) : super(key: key);
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
                      child: const AppIcon(
                        iconData: Icons.arrow_back,
                        backGroundColor: AppColors.mainColor,
                      iconColor: Colors.white,
                      iconSize: 30,)
                  ),

                  GestureDetector(
                    onTap: (){
                    //  Get.find()
                      Get.find<DocumentSectionController>().getDocumentSectionListByID(documentModel.iD!);
                    },
                      child: const AppIcon(iconData: Icons.refresh,
                        backGroundColor: AppColors.mainColor,
                        iconColor: Colors.white,
                        iconSize: 30,)
                  ),
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

                  child:  BigText(text: documentModel.tITLE!,size: Dimensions.fontSize26, ),
                )
            ),
            pinned: true,
            backgroundColor: Colors.amber,
            expandedHeight: Dimensions.height200,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  AppConstants.IMAGE_URL+documentModel.imagePath!,
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
                        text:documentModel.rESDESCRIPTION!)
                ),
                 SectionList(docId: documentModel.iD!,document: documentModel,)
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

