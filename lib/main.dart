import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meals.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delhi Meals',
      theme: ThemeData(
        primarySwatch:Colors.pink,
        accentColor:Colors.amber,
        canvasColor:Color.fromRGBO(255,254,229,1),
        fontFamily:'Raleway',
        textTheme:ThemeData.light().textTheme.copyWith(
        body1:TextStyle(
          color:Color.fromRGBO(20, 51, 51, 1)
        ),
        body2:TextStyle(
          color:Color.fromRGBO(20, 51, 51, 1)
        ), 
        title:TextStyle(
          fontSize:20,
          fontFamily:'RobotoCondensed',
          fontWeight: FontWeight.bold,
          // color:Colors.white
        ) 
        )
      ),
      // home: CategoriesScreen(),
      // initialRoute: '/',
      routes:{
        '/': (ctx)=>TabsScreen(),
         CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
         MealDetailScreen.routeName: (ctx)=>MealDetailScreen(),
        // '/category-meals': (ctx) => CategoryMealsScreen(
        // )
      },
      // load categories screen if sny named route is not registered
      onGenerateRoute: (settings){
        // if(settings.name === '/meal-detail'){
        //   return ...;
        // }
          return MaterialPageRoute(
            builder:(ctx)=>CategoriesScreen(),
          );      
      },
      // if onGenerate route is not defined
      onUnknownRoute: (settings){
            return MaterialPageRoute(builder:(ctx)=>CategoriesScreen(),);
      }
    );
  }
}
