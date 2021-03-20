import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function saveFilters;
  final Map<String, bool> currentFilter;
  FiltersScreen(this.currentFilter, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _lactoseFree = false;
  var _vegan = false;
  
  @override
  initState() {
    super.initState();
    _glutenFree = widget.currentFilter['gluten'];
    _vegetarian = widget.currentFilter['vegetarian'];
    _lactoseFree = widget.currentFilter['lactose'];
    _vegan = widget.currentFilter['vegan'];
  }

  Widget _buildSwitchListView(String title, bool currentValue,
      String description, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(
        'Only include gluten-free meal',
      ),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegan': _vegan,
                'vegetarian': _vegetarian,
              };
              widget.saveFilters(selectedFilters);
            },
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection.',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildSwitchListView(
                    'Gluten-Free',
                    _glutenFree,
                    'Only include gluten-free meals.',
                    (newValue) {
                      setState(() {
                        _glutenFree = newValue;
                      });
                    },
                  ),
                  _buildSwitchListView(
                    'Lactose-Free',
                    _lactoseFree,
                    'Only include lactose-free meals.',
                    (newValue) {
                      setState(() {
                        _lactoseFree = newValue;
                      });
                    },
                  ),
                  _buildSwitchListView(
                    'Vegetarian',
                    _vegetarian,
                    'Only include vegetarian-free meals.',
                    (newValue) {
                      setState(() {
                        _vegetarian = newValue;
                      });
                    },
                  ),
                  _buildSwitchListView(
                    'Vegan',
                    _vegan,
                    'Only include vegan meals.',
                    (newValue) {
                      setState(() {
                        _vegan = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
