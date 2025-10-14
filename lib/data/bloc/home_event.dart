abstract class HomeEvent {}

class GetProductsEvent implements HomeEvent {}

class SearchProductsEvent implements HomeEvent {
  final String query;
  SearchProductsEvent(this.query);
}
