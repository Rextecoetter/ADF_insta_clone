import 'dart:convert';

class Avatar {
  String name;
  String urlImage;
  bool live;
  bool visto;

  Avatar({
    required this.name,
    required this.urlImage,
    required this.live,
    required this.visto,
  });

  Map<String, dynamic> toMap() {
    return {
      'urlImage': urlImage,
      'live': live,
      'visto': visto,
    };
  }

  factory Avatar.fromMap(Map<String, dynamic> map) {
    return Avatar(
      name: map['name'] ?? '',
      urlImage: map['urlImage'] ?? '',
      live: map['live'] ?? false,
      visto: map['visto'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Avatar.fromJson(String source) => Avatar.fromMap(json.decode(source));
}
