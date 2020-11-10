import 'Product.dart';

class Cart {
  List<Product> cartList = [];
  int total_price = 0;
  int amount = 0;

  void addToCart(Product product) {
    cartList.add(product);
    total_price += product.price;
  }

  void removeFromCart(int index) {
    total_price -= cartList[index].price;
    cartList.removeAt(index);
  }
}
