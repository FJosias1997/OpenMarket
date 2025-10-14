import 'package:openmarket/data/bloc/home_bloc.dart';
import 'package:openmarket/data/bloc/home_event.dart';
import 'package:openmarket/data/bloc/home_state.dart';
import 'package:openmarket/global_widgets/appbar/main_appbar.dart';
import 'package:openmarket/global_widgets/cards/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeBloc = HomeBloc();

  @override
  void initState() {
    _homeBloc.add(GetProductsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'OpenMarket',
        onSearch: (value) {
          _homeBloc.add(SearchProductsEvent(value));
        },
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
          bloc: _homeBloc,
          builder: (context, state) {
            if (state is HomeLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomeErrors) {
              return Center(
                child: Text("Erro"),
              );
            } else if (state is HomeLoaded || state is SearchLoaded) {
              final list = (state as dynamic).list;
              return Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (_, index) {
                    return ProductCard(product: list[index]);
                  },
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          }),
    );
  }
}
