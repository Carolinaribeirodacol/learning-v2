class City {
  City({this.id, this.name, this.image, this.featured});

  final int id;
  final String name;
  final String image;
  final bool featured;
}

class CityModel {
  CityModel({this.id, this.name, this.image, this.featured});

  final int id;
  final String name;
  final String image;
  final bool featured;

  /** factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      featured: json["featured"]);
      */

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      featured: json['featured'],
    );
  }

  Map<String, dynamic> toJson() =>
      {"id": id, "name": name, "image": image, "featured": featured};
}
