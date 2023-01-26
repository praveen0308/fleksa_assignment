import 'package:fleksa_assignment/models/cart_model.dart';
import 'package:fleksa_assignment/screens/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/cart_view.dart';

class CartSection extends StatefulWidget {
  const CartSection({Key? key}) : super(key: key);

  @override
  State<CartSection> createState() => _CartSectionState();
}

class _CartSectionState extends State<CartSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Your Cart", style: Theme
            .of(context)
            .textTheme
            .headline4,),
        Divider(),
        BlocBuilder<HomePageCubit, HomePageState>(builder: (_, state) {
          List<CartModel> items = BlocProvider
              .of<HomePageCubit>(context)
              .cartItems;
          num total = 0;
          items.forEach((element) {
            total += element.price * element.qty;
          });
          if (items.isEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(Icons.shopping_cart_outlined, size: 80,),
                SizedBox(height: 32,),
                Text("Cart is empty",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)
              ],
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListView.builder(itemBuilder: (_, index) {
                  CartModel cartItem = items[index];
                  return CartView(cartItem: cartItem,);
                }, itemCount: items.length,
                  shrinkWrap: true,),

                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Total",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                    Text("\$${total.toStringAsFixed(2)}",style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)
                  ],
                ),
                const SizedBox(height: 16,),
                ElevatedButton(onPressed: (){}, child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text("Checkout",style: TextStyle(fontSize: 20),),
                ))
              ],
            );
          }
        })
      ],
    );
  }
}

