import 'package:comment_api/data/bloc/home_bloc.dart';
import 'package:comment_api/data/bloc/home_state.dart';
import 'package:comment_api/product_page/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsBody extends StatelessWidget {
  final _homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
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
            return ListView.builder(
              //state.list[index].body
              itemCount: state.list.length,

              itemBuilder: (_, index) {
                return GestureDetector(
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Image.network(state.list[index].thumbnail),
                            title: Text(state.list[index].title),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'R\$ ' + state.list[index].price.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                                Text("em 7x de R\$ " +
                                    ((state.list[index].price / 7).round())
                                        .toString()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetail(
                          title: state.list[index].title,
                          description: state.list[index].description,
                          price: state.list[index].price,
                          rating: state.list[index].rating,
                          stock: state.list[index].stock,
                          brand: state.list[index].brand,
                          category: state.list[index].category,
                          thumbnail: state.list[index].thumbnail,
                          images: state.list[index].images,
                        ),
                      ),
                    );
                  },
                );
              },
            );
          } else {
            return SizedBox.shrink();
          }
        });
  }
}
