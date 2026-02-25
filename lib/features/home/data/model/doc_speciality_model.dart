class DocSpecialityModel {
  final int id;
  final String name;
  final String image;

  DocSpecialityModel({
    required this.id,
    required this.name,
    required this.image,
  });

  factory DocSpecialityModel.fromJson(Map<String, dynamic> json) {
    return DocSpecialityModel(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
    );
  }
}