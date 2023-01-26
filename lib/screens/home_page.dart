import 'package:fleksa_assignment/screens/cart_section.dart';
import 'package:fleksa_assignment/screens/home_page_cubit.dart';
import 'package:fleksa_assignment/screens/product_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'categories_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTablet(BuildContext context){
    double deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth>600 && deviceWidth<1100;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.only(top: 16.0,left: 16,right: 16),
        child: Row(
          children: [
            if(!isTablet(context)) Flexible(flex:2,child: Container()),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: CategoriesSection(),
              ),
            ),
            const SizedBox(width: 16,),
            Flexible(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: ProductSection(),
              ),
            ),
            const SizedBox(width: 16,),
            Flexible(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: CartSection(),
              ),
            ),
            if(!isTablet(context))Flexible(flex:1,child: Container()),

          ],
        ),
      ),
    ));
  }

  @override
  void initState() {
    BlocProvider.of<HomePageCubit>(context).fetchMenu();
    super.initState();
  }
}
