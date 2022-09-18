class PostModelData {
  String? firstName;
  String? lastName;
  String? username;
  String? password;
  String? avatar;

  PostModelData(
      {this.firstName,
      this.lastName,
      this.username,
      this.password,
      this.avatar});

  PostModelData.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
    password = json['password'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['username'] = this.username;
    data['password'] = this.password;
    data['avatar'] = this.avatar;
    return data;
  }
}
