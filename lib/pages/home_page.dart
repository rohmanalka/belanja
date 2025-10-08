import 'package:belanja/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Adidas Birmingham',
      price: 13000000,
      image: 'assets/birming.jpeg',
      stok: 15,
      rating: 4.8,
      desk: 'Adidas Birmingham Black Pink 1/500',
    ),
    Item(
      name: 'Stone Island Felpa',
      price: 7000000,
      image: 'assets/sifelpa.jpeg',
      stok: 12,
      rating: 4.5,
      desk: 'Felpa Sweatshirt Stone Island',
    ),
    Item(
      name: 'Adidas Manchester CP',
      price: 5000000,
      image: 'assets/manchestercp.jpeg',
      stok: 12,
      rating: 4.5,
      desk: 'Adidas Manchester CP Company',
    ),
    Item(
      name: 'Jacket TNF MP3',
      price: 650000,
      image: 'assets/tnfmp3.jpeg',
      stok: 12,
      rating: 4.5,
      desk: 'The North Face Jacket MP3 Series',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.65,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ItemCard(
            item: item,
            onTap: () => context.push('/item', extra: item),
          );
        },
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
