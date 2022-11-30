import 'dart:convert';

class Character {
  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  int id;
  String name;
  String status;
  String species;
  String? type;
  String gender;
  Location origin;
  Location location;
  String image;
  List<String> episode;
  String url;
  DateTime created;

  // *** ID for animations with widget Hero(), for the tag
  String? characterId;

  factory Character.fromJson(String str) => Character.fromMap(json.decode(str));

  factory Character.fromMap(Map<String, dynamic> json) => Character(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        species: json["species"],
        type: json["type"],
        gender: json["gender"],
        origin: Location.fromMap(json["origin"]),
        location: Location.fromMap(json["location"]),
        image: json["image"],
        episode: List<String>.from(json["episode"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
      );
}

class Location {
  Location({
    required this.name,
    required this.url,
  });

  String name;
  String url;

  factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

  factory Location.fromMap(Map<String, dynamic> json) => Location(
        name: json["name"],
        url: json["url"],
      );
}
