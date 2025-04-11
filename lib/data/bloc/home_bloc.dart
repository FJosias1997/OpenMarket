import 'package:comment_api/data/providers/post_provider.dart';
import 'package:comment_api/data/bloc/home_event.dart';
import 'package:comment_api/data/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PostProvider provider = PostProvider();

  HomeBloc() : super(HomeInitial()) {
    on<GetProductsEvent>((event, emit) async {
      emit(HomeLoading());

      try {
        final postResult = await provider.getPosts();
        emit(HomeLoaded(list: postResult));
      } catch (e) {
        emit(HomeErrors(message: "Erro ao carregar os produtos"));
      }
    });
  }
}
