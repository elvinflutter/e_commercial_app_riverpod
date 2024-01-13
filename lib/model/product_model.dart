class ProductModel {
  final int pid;
  final String imgUrl;
  final String title;
  final String subtitle;
  final String price;
  final String longDescription;
  final int reviews;
  final double rating;
  bool isSelect;
  int gty;

  ProductModel({
    required this.pid,
    required this.imgUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.longDescription,
    required this.reviews,
    required this.rating,
    this.isSelect = false,
    this.gty = 1,
  });
}
