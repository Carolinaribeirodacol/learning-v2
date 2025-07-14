class User {
  //Atributos
  String email;
  String password;

  //Construtor
  User({this.email, this.password});

  static User fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    return User(
      email: map['email'],
    );
  }
}