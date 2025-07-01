// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PostDataUiModel {
  final int userId;
  final int id;
  final String slug;
  final String url;
  final String title;
  final String content;
  final String image;
  final String thumbnail;
  final String status;
  final String category;
  final String publishedAt;
  final String updatedAt;

  PostDataUiModel({
    required this.userId,
    required this.id,
    required this.slug,
    required this.url,
    required this.title,
    required this.content,
    required this.image,
    required this.thumbnail,
    required this.status,
    required this.category,
    required this.publishedAt,
    required this.updatedAt});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'slug': slug,
      'url': url,
      'title': title,
      'content': content,
      'image': image,
      'thumbnail': thumbnail,
      'status': status,
      'category': category,
      'publishedAt': publishedAt,
      'updatedAt': updatedAt,
    };
  }

  factory PostDataUiModel.fromMap(Map<String, dynamic> map) {
    return PostDataUiModel(
      userId: map['userId'] as int,
      id: map['id'] as int,
      slug: map['slug'] as String,
      url: map['url'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      image: map['image'] as String,
      thumbnail: map['thumbnail'] as String,
      status: map['status'] as String,
      category: map['category'] as String,
      publishedAt: map['publishedAt'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostDataUiModel.fromJson(String source) => PostDataUiModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
