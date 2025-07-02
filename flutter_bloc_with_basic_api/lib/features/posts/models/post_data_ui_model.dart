import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostDataUiModel {

    int id;
    String slug;
    String url;
    String title;
    String content;
    String image;
    String thumbnail;
    String publishedAt;
    String updatedAt;
    int userId;

  PostDataUiModel({
    required this.id,
    required this.slug,
    required this.url,
    required this.title,
    required this.content,
    required this.image,
    required this.thumbnail,
    required this.publishedAt,
    required this.updatedAt,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'slug': slug,
      'url': url,
      'title': title,
      'content': content,
      'image': image,
      'thumbnail': thumbnail,
      'publishedAt': publishedAt,
      'updatedAt': updatedAt,
      'userId': userId,
    };
  }

  factory PostDataUiModel.fromMap(Map<String, dynamic> map) {
    return PostDataUiModel(
      id: map['id'] as int,
      slug: map['slug'] as String,
      url: map['url'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      image: map['image'] as String,
      thumbnail: map['thumbnail'] as String,
      publishedAt: map['publishedAt'] as String,
      updatedAt: map['updatedAt'] as String,
      userId: map['userId'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostDataUiModel.fromJson(String source) => PostDataUiModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
