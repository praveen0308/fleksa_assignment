part of 'home_page_cubit.dart';

@immutable
abstract class HomePageState {}

class HomePageInitial extends HomePageState {}
class Loading extends HomePageState {}

class Error extends HomePageState {
  final String msg;

  Error(this.msg);
}
class ReceivedData extends HomePageState {
  final List<CategoryModel> data;

  ReceivedData(this.data);
}

class CategoryUpdated extends HomePageState {
  final List<ProductsBean> products;

  CategoryUpdated(this.products);
}
class CartItemsUpdated extends HomePageState {
  final List<CartModel> items;

  CartItemsUpdated(this.items);
}

