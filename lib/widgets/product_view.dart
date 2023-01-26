import 'package:fleksa_assignment/models/category_model.dart';
import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  final ProductsBean product;
  final Function() addIntoCart;
  const ProductView({Key? key, required this.product, required this.addIntoCart}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
           16
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 8
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all()
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.product.name_json!.english??"NA",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                Text(widget.product.description_json?.english??"NA"),
                Text("\$${widget.product.price.toString()}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18)),

              ],
            ),
          ),
          const SizedBox(width: 16,),

          ElevatedButton(onPressed: (){
            widget.addIntoCart();
          }, child: Text("Add"))
        ],
      ),
    );
  }
}
