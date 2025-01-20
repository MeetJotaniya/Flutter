import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  List<Map<String, String>> items = [];
  List<Map<String, String>> filteredItems = [];
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _searchController = TextEditingController();

  final RegExp emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterItems);
    filteredItems = items;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _add(String name, String email) {
    setState(() {
      items.add({'name': name, 'email': email});
      _filterItems();
    });
    _nameController.clear();
    _emailController.clear();
  }

  void _update(int index, String name, String email) {
    setState(() {
      items[index] = {'name': name, 'email': email};
      _filterItems();
    });
    _nameController.clear();
    _emailController.clear();
  }

  void _delete(int index) {
    setState(() {
      items.removeAt(index);
      _filterItems();
    });
    _nameController.clear();
    _emailController.clear();
  }

  void _filterItems() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredItems = items
          .where((item) =>
      item['name']!.toLowerCase().contains(query) ||
          item['email']!.toLowerCase().contains(query))
          .toList();
    });
  }

  void _showEditDialog(int index) {
    _nameController.text = items[index]['name']!;
    _emailController.text = items[index]['email']!;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Item'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(hintText: 'Enter Name'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(hintText: 'Enter Email'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              String name = _nameController.text;
              String email = _emailController.text;
              if (name.isNotEmpty &&
                  email.isNotEmpty &&
                  emailRegex.hasMatch(email)) {
                _update(index, name, email);
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Please enter valid name and email!'),
                ));
              }
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'CRUD with Search',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search by name or email',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(hintText: 'Enter Name'),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(hintText: 'Enter Email'),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    String name = _nameController.text;
                    String email = _emailController.text;
                    if (name.isNotEmpty &&
                        email.isNotEmpty &&
                        emailRegex.hasMatch(email)) {
                      _add(name, email);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Please enter valid name and email!'),
                      ));
                    }
                  },
                  child: Text('Add'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      '${filteredItems[index]['name']} (${filteredItems[index]['email']})'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => _showEditDialog(index),
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () => _delete(index),
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}