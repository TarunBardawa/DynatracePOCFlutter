class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.url,
    required this.avatar,
  });

  int id;
  String name;
  String email;
  String url;
  String avatar;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["full_name"].toString(),
        email: json["email"].toString(),
        url: json["url"].toString(),
        avatar: json["avatar"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "id": id.toString(),
        "full_name": name,
        "email": email,
        "url": url,
        "avatar": avatar
      };
}