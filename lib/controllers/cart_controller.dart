import 'package:get/state_manager.dart';
import 'package:getxtut/models/product.dart';

class CartController extends GetxController {
  var cartItems = [].obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
  void addToCart(Product cartItem) {
    cartItems.add(cartItem);
  }

  void removeFomCart(int id) {
    cartItems.removeWhere((item) => item.id == id);
  }
}
