class Character {
  late int? id;
  late String? fullName;
  late String? title;
  late String? family;
  late String? image;

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    title = json['title'];
    family = json['family'];
    image = json['imageUrl'];
  }
}
