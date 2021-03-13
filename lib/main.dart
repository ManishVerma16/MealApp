import 'package:MealsApp/categories_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: CategoriesScreen(),
      //MyHomePage(),
    );
  }
}

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