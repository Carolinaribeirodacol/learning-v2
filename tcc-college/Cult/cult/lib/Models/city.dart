class City {
  int id;
  String name;
  String stateCode;

  City(int id, String name, String stateCode) {
    this.id = id;
    this.name = name;
    this.stateCode = stateCode;
  }

  City.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        stateCode = json['state_code'];
}
