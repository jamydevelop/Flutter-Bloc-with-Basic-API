part of 'posts_bloc.dart';

@immutable
sealed class PostsState {}

final class PostsInitial extends PostsState {}

final class PostFetchingSuccessState extends PostsState {
  List<PostDataUiModel> post;
  PostFetchingSuccessState({required this.post});
}
