import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_basic_api/features/posts/bloc/posts_bloc.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  PostsBloc postBloc = PostsBloc();

  @override
  void initState() {
    postBloc.add(PostInitialFetchEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Post Page',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Center(
        child: Text('Post Page'),
      ),
    );
  }
}