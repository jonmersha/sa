class ServiceModel {
  late List<Service> _service;
  List<Service> get service=>_service;

  ServiceModel({required service});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    if (json['service'] != null) {
      _service = <Service>[];
      json['service'].forEach((v) {
        service.add(Service.fromJson(v));
      });
    }
  }


}

class Service {
  int? id;
  int? grade;
  String? name;
  String? imagePath;

  Service(
      {



        this.id,
        this.name,
        this.grade,
        this.imagePath


      });

  Service.fromJson(Map<String, dynamic> json) {
    id = json['ID'];
    grade = json['GRADE'];
    name = json['NAME'];
    imagePath = json['imagePath'];
  }


}


