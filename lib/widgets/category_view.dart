import 'package:fleksa_assignment/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  final CategoryModel category;
  final Function() onTap;
  const CategoryView({Key? key, required this.category, required this.onTap}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onTap();
        setState((){});
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        decoration: BoxDecoration(
          color: widget.category.isActive?Colors.black:Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(widget.category.name_json?.english??"NA",style: TextStyle(color:!widget.category.isActive?Colors.black:Colors.white ),),
      ),
    );
  }
}
