import 'package:awashderash/apps/school/controller/service_detail_list_controller.dart';
import 'package:awashderash/apps/school/presentation/page/service/component/detail_service_card.dart';
import 'package:awashderash/apps/school/presentation/page/service/main_service_list_container.dart';
import 'package:awashderash/apps/school/utils/app_color.dart';
import 'package:awashderash/apps/school/utils/app_constants.dart';
import 'package:awashderash/util/dimension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailServiceList extends StatefulWidget {
  final int id;
  const DetailServiceList({Key? key, required this.id}) : super(key: key);
  @override
  State<DetailServiceList> createState() => _DetailServiceListState();
}

class _DetailServiceListState extends State<DetailServiceList> {
  @override
  Widget build(BuildContext context) {
    Get.find<ServiceListDetailController>().geServiceListByID(widget.id);

    return         GetBuilder<ServiceListDetailController>(builder: (serviceListDetailController){
      return serviceListDetailController.isLoaded? ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: serviceListDetailController.serviceDetailList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Get.to(()=>DetailServiceListContainer(serviceModel: serviceListDetailController.serviceDetailList[index]),
                    transition: Transition.leftToRightWithFade,duration: const Duration(milliseconds: 800));
              },

              child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
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
                              image: NetworkImage(AppConstants.IMAGE_URL+serviceListDetailController.serviceDetailList[index].serviceIconPath!)
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
                          child: DetailserviceCard(serviceDetail:serviceListDetailController.serviceDetailList[index]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }):const CircularProgressIndicator(
        color: AppColors.mainColor,
      );
    });
  }
}

