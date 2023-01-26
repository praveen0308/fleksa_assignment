import 'package:fleksa_assignment/widgets/product_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/category_model.dart';
import 'home_page_cubit.dart';

class ProductSection extends StatefulWidget {
  const ProductSection({Key? key}) : super(key: key);

  @override
  State<ProductSection> createState() => _ProductSectionState();
}

class _ProductSectionState extends State<ProductSection> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(buildWhen: (previous,current){
      if(current is ReceivedData){
        return false;
      }
      if(current is CartItemsUpdated) return false;
      return true;
    },builder: (_, state) {
      if (state is Loading)
        return Center(
          child: CircularProgressIndicator(),
        );

      if (state is CategoryUpdated) {
        List<ProductsBean> products = state.products;

        return ListView.builder(
            itemBuilder: (_, index) {
              ProductsBean product = products[index];
              return ProductView(product: product, addIntoCart: (){
                BlocProvider.of<HomePageCubit>(context).addIntoCart(product, 1);
              });
            },
            itemCount: products.length);
      }
      if (state is Error) {
        return Center(
          child: Column(children: [
            Icon(
              Icons.error,
              size: 64,
            ),
            Text(state.msg)
          ]),
        );
      }
      return Container();
    });
  }
}
