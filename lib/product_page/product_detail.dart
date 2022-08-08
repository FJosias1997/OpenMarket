import 'package:comment_api/product_page/widgets/products_list_images_widget.dart';
import 'package:comment_api/product_page/widgets/rating_products_widget.dart';
import 'package:comment_api/product_page/widgets/specs_page.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String title;
  final String description;
  final int price;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List images;

  ProductDetail({
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Details"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image.network(thumbnail),
            // SizedBox(height: 16),
            Text(
              "Novo | 55000 vendidos",
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
            SizedBox(height: 5),
            //Classificação estrelas
            Row(
              children: [
                Text("Classificação: " + rating.toString(),
                    style: TextStyle(fontSize: 11, color: Colors.grey)),
                RatingProducts(ratings: rating),
              ],
            ),
            //fim Classificação Estrelas
            SizedBox(height: 11),
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  final urlImage = images[index];
                  return ProductsListImages(urlImage: urlImage);
                },
              ),
            ),
            SizedBox(height: 10),

            SizedBox(height: 10),
            Text(
              'R\$ ' + price.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Text(
              'em 7x de R\$' + ((price / 7).round()).toString(),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Center(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text(
                        'Comprar',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  //fim do botão 1
                  //início do botão 2
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[200],
                      ),
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text(
                        'Adicionar ao Carrinho agora',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  //fim do botão 2
                ],
              ),
            ),
            // Início das características do produto. Aqui será invocado um widget build,
            //a partir de outra página.
            SizedBox(height: 20),
            SpecsProducts(
              descriptionSpec: description,
              brandSpec: brand,
              categorySpec: category,
              titleSpec: title,
              priceSpec: price,
            ),
          ],
        ),
      ),
    );
  }
}
