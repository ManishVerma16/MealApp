import 'package:flutter/material.dart';

import './category_meals_screen.dart';
import './categories_screen.dart';

void main(){
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delicious Meal',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.amber,  //black,
        canvasColor: Color.fromRGBO(255,254,229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // points to default route '/' but can be change to some other page
      routes: {
        '/' : (ctx) => CategoriesScreen(),  // Annotation for home route
        CategoryMealsScreen.routeName : (ctx) => CategoryMealsScreen(), // route name created as a static const property
      },
    );
  }
}

/*
Route name for meals page
'/category_meals' : (ctx) => CategoryMealsScreen(),  // route name create as a string

*/

/*
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delicious Meals')
      ),
      body: Center(
        child: Text('Navigation Time'),
      ),
    );
  }
}

*/