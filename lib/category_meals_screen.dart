import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Recipes Screen'),
      ),
          body: Center(
        child: Text(
          'The recipes for the category!',
        ),
      ),
    );
  }
}
