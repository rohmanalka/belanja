import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemDetailHead extends StatelessWidget {
  final Item item;

  const ItemDetailHead({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
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
                width: double.infinity,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rp ${item.price}',
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 18),
                    const SizedBox(width: 4),
                    Text(item.rating.toString(), style: const TextStyle(fontSize: 14)),
                    const SizedBox(width: 10),
                    Container(height: 14, width: 1, color: Colors.grey.shade400),
                    const SizedBox(width: 10),
                    Text('Stok: ${item.stok}', style: const TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
