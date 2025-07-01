part of 'post_bloc.dart';

@immutable
sealed class PostState {}

final class PostInitial extends PostState {}

final class PostFetchingLoadingState extends PostState {}

final class PostFetchingSuccessState extends PostState {}

final class PostFetchingErrorState extends PostState {}
