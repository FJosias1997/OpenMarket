import 'package:comment_api/data/models/post_model.dart';
import 'package:comment_api/product_page/widgets/products_list_images_widget.dart';
import 'package:comment_api/product_page/widgets/rating_products_widget.dart';
import 'package:comment_api/product_page/widgets/specs_page.dart';
import 'package:comment_api/widgets/appbar/main_appbar.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final PostModel product;

  ProductDetailPage({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'Details'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Novo | 55000 vendidos",
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
            SizedBox(height: 5),
            //Classificação estrelas
            Row(
              children: [
                Text("Classificação: " + product.rating.toString(),
                    style: TextStyle(fontSize: 11, color: Colors.grey)),
                RatingProducts(ratings: product.rating),
              ],
            ),
            //fim Classificação Estrelas
            SizedBox(height: 11),
            Text(
              product.title,
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
                itemCount: product.images.length,
                itemBuilder: (context, index) {
                  final urlImage = product.images[index];
                  return ProductsListImages(urlImage: urlImage);
                },
              ),
            ),
            SizedBox(height: 10),

            SizedBox(height: 10),
            Text(
              'R\$ ' + product.price.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Text(
              'em 7x de R\$' + ((product.price / 7).round()).toString(),
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
                        backgroundColor: Colors.cyan[200],
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
              descriptionSpec: product.description,
              brandSpec: product.brand ?? '',
              categorySpec: product.category,
              titleSpec: product.title,
              priceSpec: product.price,
            ),
          ],
        ),
      ),
    );
  }
}
