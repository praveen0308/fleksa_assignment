import 'package:fleksa_assignment/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  final CartModel cartItem;
  const CartView({Key? key, required this.cartItem}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.cartItem.product.name_json?.english??"NA",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
          Text("X${widget.cartItem.qty}"),
          Text("\$${widget.cartItem.price}"),
        ],
      ),
    );
  }
}
