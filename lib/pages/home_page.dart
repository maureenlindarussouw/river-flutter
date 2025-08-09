import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop app'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {},
              child: Badge(label: Text('3'), child: Icon(Icons.shopping_cart)),
            ),
          ),
        ],
      ),
      body: Column(children: [Text('Latest products')]),
    );
  }
}
