import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      image: './assets/sugar.jpg',
      stok: 15,
      rating: 4.8,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      image: 'assets/salt.jpeg',
      stok: 12,
      rating: 4.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shopping List'),
          backgroundColor: Colors.blue,
        ),
        body: GridView.count(
          crossAxisCount: 2, // dua kolom
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.68,
          padding: EdgeInsets.all(8),
          children: List.generate(items.length, (index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox.expand(
                        child: Image.asset(
                          item.image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Rp ${item.price}',
                            style: TextStyle(color: Colors.green),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(item.stok.toString(), style: const TextStyle(fontSize: 14)),
                              const Spacer(),
                              Icon(Icons.star, color: Colors.amber, size: 12),
                              SizedBox(width: 4),
                              Text(item.rating.toString()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
