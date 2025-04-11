import 'package:comment_api/data/models/post_model.dart';

abstract class HomeState {}

class HomeInitial implements HomeState {}

class HomeLoading implements HomeState {}

class HomeLoaded implements HomeState {
  final List<PostModel> list;

  HomeLoaded({required this.list});
}

class HomeErrors implements HomeState {
  final String message;

  HomeErrors({required this.message});
}
