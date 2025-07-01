import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_with_basic_api/features/posts/bloc/post_bloc.dart';
import 'package:flutter_bloc_with_basic_api/features/posts/models/post_data_ui_model.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({super.key});

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {

  PostBloc postBloc = PostBloc();

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
      body: BlocConsumer<PostBloc,PostState>(
        bloc: postBloc,
        listenWhen: (previous, current) => current is PostActionState,
        buildWhen: (previous, current) => current is! PostActionState,
        listener: (context,state){},
        builder: (context,state) {

          switch(state.runtimeType) {

            case const (PostFetchingLoadingState):
            return Center(
              child: CircularProgressIndicator(),
            );

            case const (PostFetchingSuccessState):
            final successState = state as PostFetchingSuccessState;
            return ListView.builder(
              itemCount: successState.posts.length,
              itemBuilder: (context,index){
                return Container(
                  color: Colors.grey[200],
                  margin: const EdgeInsets.all(16.0),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(successState.posts[index].title),
                      Image.network(successState.posts[index].image)
                    ],
                  ),
                );
              },
            );

            default:
            return SizedBox();
          }
        },
      )
    );
  }
}