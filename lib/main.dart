import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:comment_api/data/bloc/home_event.dart';
import 'package:comment_api/data/bloc/home_state.dart';
import 'package:comment_api/data/bloc/home_bloc.dart';
//import 'package:comment_api/testing_and_unused_pages/widget_test.dart';
import 'package:comment_api/product_page/product_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OpenMarket - A Free tax online Shopping mall never seen before ',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'OpenMarket - free',
          style: TextStyle(color: Colors.white),
        ),
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
                              leading:
                                  Image.network(state.list[index].thumbnail),
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
          }),

      //Botão floating para teste de página, apenas
      //  floatingActionButton: FloatingActionButton(
      //    onPressed: () {
      //      Navigator.push(
      //      context,
      //      MaterialPageRoute(builder: (context) => WidgetTest()),
      //     );
      //    },
      //    tooltip: 'Widget Testing Page',
      //     child: const Icon(Icons.add),
      //    ),
    );
  }
}
