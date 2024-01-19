class ProductModel {
  final int pid;
  final String imgUrl;
  final String title;
  final String shortDescription;
  final double price;
  final String longDescription;
  final int review;
  final double rating;
  bool isSelect;
  int gty;

  ProductModel({
    required this.pid,
    required this.imgUrl,
    required this.title,
    required this.shortDescription,
    required this.price,
    required this.longDescription,
    required this.review,
    required this.rating,
    this.isSelect = false,
    this.gty = 1,
  });
}
