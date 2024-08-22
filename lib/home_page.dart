import 'package:comment_api/data/bloc/home_bloc.dart';
import 'package:comment_api/data/bloc/home_event.dart';
import 'package:comment_api/data/bloc/home_state.dart';
import 'package:comment_api/widgets/appbar/main_appbar.dart';
import 'package:comment_api/widgets/cards/product_card.dart';
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
      drawer: Drawer(),
      appBar: MainAppBar(
        title: 'OpenMarket',
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
            } else if (state is HomeLoaded) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
                  itemCount: state.list.length,
                  itemBuilder: (_, index) {
                    return ProductCard(
                      product: state.list[index],
                    );
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
