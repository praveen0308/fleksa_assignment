import 'package:bloc/bloc.dart';
import 'package:fleksa_assignment/models/api_result_model.dart';
import 'package:fleksa_assignment/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../models/category_model.dart';
import '../repository/menu_repository.dart';
import '../utils/network_exceptions.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final MenuRepository _menuRepository;

  HomePageCubit(this._menuRepository) : super(HomePageInitial());
  final List<CartModel> cartItems = [];

  void addIntoCart(ProductsBean product,int qty){
    bool isExist = false;
    cartItems.forEach((element) {

      if(element.product.id==product.id){
        element.qty++;
        isExist = true;
      }
    });
    if(!isExist) cartItems.add(CartModel(product, product.price!, qty));

    emit(CartItemsUpdated(cartItems));
  }

  void pickCategory(CategoryModel cat, List<CategoryModel> cats) {
    cats.forEach((element) {
      if (element.id == cat.id) {
        element.isActive = true;
      } else {
        element.isActive = false;
      }
    });

    emit(ReceivedData(cats));
    Future.delayed(Duration(milliseconds: 500))
        .then((value) => emit(CategoryUpdated(cat.products!)));
  }

  void fetchMenu() async {
    emit(Loading());
    try {
      ApiResultModel response = await _menuRepository.fetchMenu();
      if (response.result) {
        response.categories[0].isActive =true;
        emit(ReceivedData(response.categories));
        emit(CategoryUpdated(response.categories[0].products ?? []));
      } else {
        emit(Error("Failed to fetch menus !!!"));
      }
    } on NetworkExceptions catch (e) {
      emit(Error("Something went wrong !!!"));
      debugPrint("Exception >>> $e");
    } on Exception catch (e) {
      emit(Error("Something went wrong !!!"));
      debugPrint("Exception >>> $e");
    }
  }
}
