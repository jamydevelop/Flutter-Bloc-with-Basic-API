part of 'post_bloc.dart';

@immutable
sealed class PostState {}

final class PostActionState extends PostState {}

final class PostInitial extends PostState {}

final class PostFetchingLoadingState extends PostState {}

final class PostFetchingSuccessState extends PostState {
  final List<PostDataUiModel> posts;

  PostFetchingSuccessState({required this.posts});
}

final class PostFetchingErrorState extends PostState {}
