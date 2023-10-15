
import 'package:awashderash/apps/school/controller/document_section_controller.dart';
import 'package:awashderash/apps/school/model/document_model.dart';
import 'package:awashderash/apps/school/presentation/page/documents/components/section_card.dart';
import 'package:awashderash/apps/school/presentation/page/documents/section_pdf_viewer.dart';
import 'package:awashderash/apps/school/utils/app_color.dart';
import 'package:awashderash/apps/school/utils/app_constants.dart';
import 'package:awashderash/util/dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SectionList extends StatefulWidget {
  final int docId;
  final Document document;
   const SectionList({Key? key, required this.docId,required this.document}) : super(key: key);
  @override
  State<SectionList> createState() => _SectionListState();
}



class _SectionListState extends State<SectionList> {
  @override
  Widget build(BuildContext context) {

    Get.find<DocumentSectionController>().getDocumentSectionListByID(widget.docId);

    return         GetBuilder<DocumentSectionController>(builder: (sectionController){
      return sectionController.isLoaded? ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: sectionController.sectionList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
               onTap: (){
                 Get.to(()=>SectionPDFView(sectionModel: sectionController.sectionList[index], documentSectionController: sectionController,),
                     transition: Transition.leftToRightWithFade,duration: const Duration(milliseconds: 800));
               },
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Container(
                    margin:  const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff32373f),
                            blurRadius: 2.0,
                            offset: Offset(-10, 2)
                        ),
                      //   BoxShadow(
                      //       color: Color(0xff3d7ddc),
                      //       blurRadius: 5.0,
                      //       offset: Offset(1, 0))
                       ]
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin:  const EdgeInsets.only(bottom: 7),
                        height: Dimensions.listViewIMG,
                        width: Dimensions.listViewIMG,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(Dimensions.width10),
                            color: Colors.blue,
                            image:  DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(AppConstants.IMAGE_URL+widget.document.documentImagePath!)
                            )
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: Dimensions.listViewTextView,
                          width: Dimensions.listViewTextView,
                          margin: const EdgeInsets.only(bottom: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(Dimensions.width10),
                                  bottomRight:
                                  Radius.circular(Dimensions.width10)),
                              color: Colors.white30),
                          child: Padding(
                            padding: EdgeInsets.only(left: Dimensions.width10),
                            child: SectionCard(section:sectionController.sectionList[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }):const CircularProgressIndicator(
        color: AppColors.mainColor,
      );
    });
  }
}


