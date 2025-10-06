import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    
    return Scaffold (
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              itemArgs.name,
            ),
            SizedBox(height: 10),
            Text(
              itemArgs.price.toString(),
            ),
          ],
        ),
      ),
    );
  }
}