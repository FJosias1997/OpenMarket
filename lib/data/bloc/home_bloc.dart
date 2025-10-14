import 'dart:developer';

import 'package:openmarket/data/providers/post_provider.dart';
import 'package:openmarket/data/bloc/home_event.dart';
import 'package:openmarket/data/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PostProvider provider = PostProvider();

  HomeBloc() : super(HomeInitial()) {
    on<GetProductsEvent>((event, emit) async {
      emit(HomeLoading());

      try {
        final products = await provider.getProducts();
        emit(HomeLoaded(list: products));
      } catch (e) {
        emit(HomeErrors(message: "Erro ao carregar os produtos"));
      }
    });

    on<SearchProductsEvent>((event, emit) async {
      emit(HomeLoading());

      try {
        final products = await provider.searchProduct(event.query);
        log(products.toString());
        emit(SearchLoaded(list: products));
      } catch (e) {
        emit(HomeErrors(message: "Erro ao buscar os produtos"));
      }
    });
  }
}
