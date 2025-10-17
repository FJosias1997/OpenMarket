import 'package:openmarket/data/models/product_model.dart';
import 'package:openmarket/extensions/context_extensions.dart';
import 'package:openmarket/pages/product_page/product_detail_page.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .17,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(4, 8, 4, 0),
                isThreeLine: false,
                leading: Image.network(product.thumbnail),
                title: Text(
                  product.title,
                  style: context.theme.textTheme.titleSmall,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$ ' + product.price.toString(),
                      style: context.theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "em 7x de \$ " + ((product.price / 7).round()).toString(),
                      style: context.theme.textTheme.bodySmall,
                    ),
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
            builder: (context) => ProductDetailPage(
              product: product,
            ),
          ),
        );
      },
    );
  }
}
