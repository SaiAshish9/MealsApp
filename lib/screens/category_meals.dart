import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  static const  routeName='/category-meals';

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle=routeArgs['title'];
    final categoryId=routeArgs['id']; 
    final categoryMeals=DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(title: Text(categoryTitle)),
        // body: Center(
        //   child: Text('The Recipes For The Category!'),
        // )
        body:ListView.builder(itemBuilder:(ctx,index){
           return MealItem(
             title:categoryMeals[index].title,
             imageUrl:categoryMeals[index].imageUrl,
             duration:categoryMeals[index].duration,
             affordability:categoryMeals[index].affordability,
             complexity:categoryMeals[index].complexity,
           );
        },
        itemCount:categoryMeals.length
        )
        );
  }
}