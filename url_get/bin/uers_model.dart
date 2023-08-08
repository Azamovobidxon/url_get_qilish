class UsersModel{
  String? id;
  String? firstName;
  String? lastName;
  int? age;
  String? phoneNumber;

  UsersModel({this.id,this.firstName,this.lastName,this.age,this.phoneNumber});


  factory UsersModel.fromJson(Map<String,Object?> json) => UsersModel(
    id:json["id"]as String,
    firstName:json["firstName"] as String,
    lastName:json["lastName"] as String,
    age: json["age"] as int,
    phoneNumber: json["phoneNumber"] as String,
    );

  @override
  String toString(){
    return "$runtimeType(id:$id\n,firstName:$firstName\n,lastName:$lastName\n,age:$age,phoneNumber:$phoneNumber\n)";
  }
}