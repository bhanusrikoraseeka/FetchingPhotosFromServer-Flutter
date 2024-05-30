

class Photo {
  final int id;
  final String title;
  final String imageUrl;

  Photo({
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'],
      title: json['title'],
      imageUrl: json['url'],
    );
  }
}