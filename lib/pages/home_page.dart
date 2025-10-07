import 'package:flutter/material.dart';
import '../models/item.dart';

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
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'item-${item.name}',
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Rp ${item.price}',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Colors.amber, size: 14),
                            SizedBox(width: 4),
                            Text(
                              item.rating.toString(),
                              style: TextStyle(fontSize: 12),
                            ),
                            Spacer(),
                            Text(
                              'Stok: ${item.stok}',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
