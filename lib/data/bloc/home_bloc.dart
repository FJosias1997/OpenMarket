import 'package:comment_api/data/providers/post_provider.dart';
import 'package:comment_api/data/bloc/home_event.dart';
import 'package:comment_api/data/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:comment_api/data/models/post_model.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  PostProvider provider = PostProvider();

  HomeBloc() : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetProductsEvent) {
      yield HomeLoading();

      List<PostModel> postResult = await provider.getPosts();

      yield HomeLoaded(list: postResult);
    }
  }
}
