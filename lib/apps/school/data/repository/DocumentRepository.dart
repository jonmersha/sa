
import 'package:awashderash/apps/school/data/api/api_client.dart';
import 'package:awashderash/apps/school/utils/app_constants.dart';
import 'package:get/get.dart';

class DocumentRepository extends GetxService{
  final ApIClient apIClient;

  DocumentRepository({required this.apIClient});
  
  Future<Response> getPopularProductList() async{
    return await apIClient.getData(AppConstants.DOCUMENTS);
  }
}