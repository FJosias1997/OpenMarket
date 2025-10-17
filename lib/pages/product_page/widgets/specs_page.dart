import "package:openmarket/data/models/product_model.dart";
import "package:flutter/material.dart";

class SpecsProducts extends StatelessWidget {
  final ProductModel product;

  SpecsProducts({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Descrição",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 10),
        Text(
          product.description,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        Text(
          "Especificação",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 10),
        Text(
          "Marca: " + '${product.brand ?? ''}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        Text(
          "Categoria: " + product.category,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        Text(
          "Modelo: " + '${product.brand ?? ''}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        Text(
          "Preço: R\$" + product.price.toString(),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              "Formas de Pagamento: ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Icon(
              Icons.credit_card,
              color: Colors.pink,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ],
        ),
      ]),
    );
  }
}
