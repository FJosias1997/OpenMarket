import "package:flutter/material.dart";

class SpecsProducts extends StatelessWidget {
  final String descriptionSpec;
  final String brandSpec;
  final String categorySpec;
  final String titleSpec;
  final int priceSpec;

  SpecsProducts(
      {required this.descriptionSpec,
      required this.brandSpec,
      required this.categorySpec,
      required this.titleSpec,
      required this.priceSpec});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "O Que você precisa saber sobre este produto",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Text(
          descriptionSpec,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        Text(
          "Características",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Text(
          "Marca: " + brandSpec,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          "Categoria: " + categorySpec,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          "Modelo: " + titleSpec,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          "Preço: R\$" + priceSpec.toString(),
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              "Formas de Pagamento: ",
              style: TextStyle(fontSize: 16),
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
