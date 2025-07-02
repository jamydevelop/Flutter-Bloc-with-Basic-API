import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_basic_api/features/posts/ui/posts_page.dart';

void main () {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PostsPage(),
  ));
}