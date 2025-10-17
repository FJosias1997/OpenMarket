import 'package:openmarket/data/models/product_model.dart';

abstract class HomeState {}

class HomeInitial implements HomeState {}

class HomeLoading implements HomeState {}

class HomeLoaded implements HomeState {
  final List<ProductModel> list;

  HomeLoaded({required this.list});
}

class SearchLoaded implements HomeState {
  final List<ProductModel> list;

  SearchLoaded({required this.list});
}

class HomeErrors implements HomeState {
  final String message;

  HomeErrors({required this.message});
}
