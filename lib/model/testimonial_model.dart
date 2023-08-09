class TestimonialModel {
  int id;
  String title;
  String description;
  String name;
  String company;
  String designation;
  String image;

  TestimonialModel({
    required this.id,
    required this.title,
    required this.description,
    required this.name,
    required this.company,
    required this.designation,
    required this.image,
  });

  factory TestimonialModel.fromJson(Map<String, dynamic> json) =>
      TestimonialModel(
        id: json["id"],
        title: json["title"],
        name: json["name"],
        description: json["description"],
        company: json["company"],
        designation: json["designation"],
        image: json["imageUrlLarge"],
      );
}
