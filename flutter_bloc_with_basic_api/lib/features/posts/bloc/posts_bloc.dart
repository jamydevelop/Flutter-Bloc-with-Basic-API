import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_with_basic_api/features/posts/models/post_data_ui_model.dart';
import 'package:flutter_bloc_with_basic_api/features/posts/repos/post_repo.dart';
import 'package:meta/meta.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<PostInitialFetchEvent>(postInitialFetchEvent);
  }

  FutureOr<void> postInitialFetchEvent(PostInitialFetchEvent event, Emitter<PostsState> emit) async{
    var post = await PostRepo.fetchPost();
    print(post);

  }
}
