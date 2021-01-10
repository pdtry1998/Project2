class ShopModel{

  //Field

  String name, detail, call, pathImage;


  //Method
  ShopModel(this.name,this.detail,this.call,this.pathImage);

  ShopModel.fromMap(Map<String, dynamic> map){
    name = map['Name'];
    detail = map['Detail'];
    call = map['Call'];
    pathImage = map['PathImage'];
  }



}