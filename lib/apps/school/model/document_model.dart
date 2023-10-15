class DocumentModel {
  late List<Document> _document;
  List<Document> get document =>_document;

  DocumentModel({required document}){
    _document=document;
  }

  DocumentModel.fromJson(Map<String, dynamic> json) {
    if (json['document'] != null) {
      _document = <Document>[];
      json['document'].forEach((v) {
        document.add(Document.fromJson(v));
      });
    }
  }


}

class Document {
  int? iD;
  String? tITLE;
  int? rESOURCETYPE;
  int? gRADE;
  String? rESDESCRIPTION;
  String? fILEPATH;
  int? isFREE;
  int? pRICE;
  int? oWNER;
  String? imagePath;

  Document(
      {this.iD,
        this.tITLE,
        this.rESOURCETYPE,
        this.gRADE,
        this.rESDESCRIPTION,
        this.fILEPATH,
        this.isFREE,
        this.pRICE,
        this.oWNER,
        this.imagePath}
      );

  Document.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    tITLE = json['TITLE'];
    rESOURCETYPE = json['RESOURCE_TYPE'];
    gRADE = json['GRADE'];
    rESDESCRIPTION = json['RES_DESCRIPTION'];
    fILEPATH = json['FILE_PATH'];
    isFREE = json['isFREE'];
    pRICE = json['PRICE'];
    oWNER = json['OWNER'];
    imagePath = json['imagePath'];
  }

}
