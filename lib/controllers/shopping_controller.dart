import 'package:get/state_manager.dart';
import 'package:getxtut/models/product.dart';

class ShoppingController extends GetxController {
  var products = [].obs;
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    var productResult = [
      Product(
        id: 1,
        price: 130,
        productImage: "1",
        productDescription: "a",
        productName: "productName",
      ),
      Product(
        id: 2,
        price: 990,
        productImage: "1",
        productDescription: "a",
        productName: "productName",
      ),
    ];
    products.value=productResult;
  }
}
