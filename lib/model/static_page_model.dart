class StaticPageModel {
  String name;
  String content;

  StaticPageModel({
    required this.name,
    required this.content,
  });

  factory StaticPageModel.fromJson(Map<String, dynamic> json) =>
      StaticPageModel(
        name: json["title"],
        content: json["description"] ?? '',
      );
}
