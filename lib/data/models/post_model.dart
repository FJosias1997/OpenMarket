class PostModel {
  final int id;
  final String title;
  final String description;
  final int price;
  //final double discountpercentage;
  final dynamic rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List images;

  PostModel(
      this.id,
      this.title,
      this.description,
      this.price,
      // this.discountpercentage,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail,
      this.images);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      json['id'],
      json['title'],
      json['description'],
      json['price'],
      // json['discountpercentage'],
      json['rating'],
      json['stock'],
      json['brand'],
      json['category'],
      json['thumbnail'],
      json['images'],
    );
  }
}
