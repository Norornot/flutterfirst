import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemsWidget extends StatelessWidget {
  final Items item;

  const ItemsWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.imageUrl),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}"),
      ),
    );
  }
}
