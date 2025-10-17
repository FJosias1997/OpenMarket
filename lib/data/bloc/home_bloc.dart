import 'package:openmarket/data/models/product_model.dart'; // Import necessário
import 'package:openmarket/data/providers/product_provider.dart';
import 'package:openmarket/data/bloc/home_event.dart';
import 'package:openmarket/data/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProductProvider provider = ProductProvider();

  List<ProductModel> _originalProducts = [];

  HomeBloc() : super(HomeInitial()) {
    on<GetProductsEvent>((event, emit) async {
      emit(HomeLoading());

      try {
        final products = await provider.getProducts();

        _originalProducts = products;

        emit(HomeLoaded(list: products));
      } catch (e) {
        emit(HomeErrors(message: "Erro ao carregar os produtos"));
      }
    });

    on<SearchProductsEvent>((event, emit) {
      if (event.query.isEmpty) {
        emit(HomeLoaded(list: _originalProducts));
        return;
      }

      final query = event.query.toLowerCase();

      final filteredList = _originalProducts
          .where(
            (product) => product.title.toLowerCase().contains(query),
          )
          .toList();

      emit(SearchLoaded(list: filteredList));
    });
  }
}
