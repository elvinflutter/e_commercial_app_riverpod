import 'package:e_commercial_app_riverpod/data/product_list.dart';
import 'package:e_commercial_app_riverpod/model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductNotifire extends StateNotifier<List<ProductModel>> {
  ProductNotifire() : super(productItems);
}

final productNotifireProvider =
    StateNotifierProvider<ProductNotifire, List<ProductModel>>((ref) {
  return ProductNotifire();
});
