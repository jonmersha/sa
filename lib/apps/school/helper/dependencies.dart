
import 'package:awashderash/apps/school/controller/BranchServiceController.dart';
import 'package:awashderash/apps/school/controller/DocumentController.dart';
import 'package:awashderash/apps/school/controller/document_section_controller.dart';
import 'package:awashderash/apps/school/controller/service_detail_list_controller.dart';
import 'package:awashderash/apps/school/data/api/api_client.dart';
import 'package:awashderash/apps/school/data/repository/DocumentRepository.dart';
import 'package:awashderash/apps/school/data/repository/ServiceRepository.dart';
import 'package:awashderash/apps/school/data/repository/document_section_repository.dart';
import 'package:awashderash/apps/school/data/repository/service_list_details.dart';
import 'package:awashderash/apps/school/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApIClient(appBaseUrl: AppConstants.BASE_URL));

//repos
  Get.lazyPut(() => DocumentRepository(apIClient: Get.find()));
  Get.lazyPut(() => ServiceRepository(apIClient: Get.find()));

  Get.lazyPut(() => DocumentSectionRepository(apIClient: Get.find()));
  Get.lazyPut(() => ServiceListDetailRepository(apIClient: Get.find()));


//Controllers
  Get.lazyPut(() => DocumentController(documentRepo: Get.find()));
  Get.lazyPut(() => BranchServiceController(serviceRepo: Get.find()));
  Get.lazyPut(() => DocumentSectionController(documentSectionRepo: Get.find()));
  Get.lazyPut(() => ServiceListDetailController(serviceListDetailRepo: Get.find()));

}
