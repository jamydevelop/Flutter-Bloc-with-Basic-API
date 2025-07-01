import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_with_basic_api/features/posts/models/post_data_ui_model.dart';
import 'package:flutter_bloc_with_basic_api/features/posts/repos/post_repo.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<PostInitialFetchEvent>(postInitialFetchEvent);
  }

  FutureOr<void> postInitialFetchEvent(PostInitialFetchEvent event, Emitter<PostState> emit) async {
    emit(PostFetchingLoadingState());
    var data = await PostRepo.fetchPost();
    emit(PostFetchingSuccessState(posts: data));
  }

}
