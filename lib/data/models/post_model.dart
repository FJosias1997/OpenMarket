class ProductModel {
  final int id;
  final String title;
  final String description;
  final dynamic price;
  //final double discountpercentage;
  final dynamic rating;
  final int stock;
  final String? brand;
  final String category;
  final String thumbnail;
  final List images;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    this.price,
    this.rating,
    required this.stock,
    this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      rating: json['rating'],
      stock: json['stock'],
      brand: json['brand'],
      category: json['category'],
      thumbnail: json['thumbnail'],
      images: json['images'],
    );
  }
}
