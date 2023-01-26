import 'package:fleksa_assignment/models/category_model.dart';
import 'package:fleksa_assignment/screens/home_page_cubit.dart';
import 'package:fleksa_assignment/widgets/category_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(buildWhen: (previous,current){
      if(current is CategoryUpdated) return false;
      if(current is CartItemsUpdated) return false;

      return true;
    },builder: (_, state) {
      if (state is Loading)
        return Center(
          child: CircularProgressIndicator(),
        );

      if (state is ReceivedData) {

        List<CategoryModel> cats = state.data;

        return Scrollbar(
          child: ListView.builder(
              itemBuilder: (_, index) {
                CategoryModel cat = cats[index];
                return CategoryView(category: cat, onTap: (){
                  BlocProvider.of<HomePageCubit>(context).pickCategory(cat, cats);
                });
              },
              itemCount: cats.length),
        );
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
