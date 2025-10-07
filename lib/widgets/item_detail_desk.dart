import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemDetailDesk extends StatelessWidget {
  final Item item;

  const ItemDetailDesk({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Deskripsi Produk',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item.desk,
            style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.5),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
