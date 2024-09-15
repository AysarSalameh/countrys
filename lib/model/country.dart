import 'dart:convert';

List<Country> countryFromJson(String str) =>
    List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

String countryToJson(List<Country> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Country {
  Name name;
  Flags flags;

  Country({
    required this.name,
    required this.flags,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: Name.fromJson(json["name"] ?? {}),
        flags: Flags.fromJson(json["flags"] ?? {}),
      );

  Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "flags": flags.toJson(),
      };
}

class Flags {
  String png;
  String svg;

  Flags({
    required this.png,
    required this.svg,
  });

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json["png"] ?? '',
        svg: json["svg"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
      };
}

class Name {
  String common;
  String official;
  NativeName? nativeName;

  Name({
    required this.common,
    required this.official,
    this.nativeName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"] ?? '',
        official: json["official"] ?? '',
        nativeName: json["nativeName"] != null
            ? NativeName.fromJson(json["nativeName"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName?.toJson(),
      };
}

class NativeName {
  Eng? eng;

  NativeName({
    this.eng,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        eng: json["eng"] != null ? Eng.fromJson(json["eng"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "eng": eng?.toJson(),
      };
}

class Eng {
  String official;
  String common;

  Eng({
    required this.official,
    required this.common,
  });

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        official: json["official"] ?? '',
        common: json["common"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
      };
}
