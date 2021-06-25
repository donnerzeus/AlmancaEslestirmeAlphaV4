class UserModel {
  int id;
  String userName;
  int password;
  String mail;
  int age;
  bool isadmin;

  UserModel(
      {this.id,
        this.userName,
        this.password,
        this.mail,
        this.age,
        this.isadmin});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    password = json['password'];
    mail = json['mail'];
    age = json['age'];
    isadmin = json['isadmin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['password'] = this.password;
    data['mail'] = this.mail;
    data['age'] = this.age;
    data['isadmin'] = this.isadmin;
    return data;
  }
}