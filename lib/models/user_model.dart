class UserModel {
  String id;
  String email;
  String password;
  String name;
  String goal;

  UserModel({
    this.id,
    this.email,
    this.password,
    this.name,
    this.goal,
  });

  UserModel.fromJson(Map<dynamic, String> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
    goal = json['goal'];
  }

  Map<dynamic, String> toJson() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'name': name,
      'goa;': goal
    };
  }
}
