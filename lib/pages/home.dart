import 'package:flutter/material.dart';
import 'package:myfirstapp/models/catalog.dart';
import 'package:myfirstapp/widgets/drawer.dart';
import 'package:myfirstapp/widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(12, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return ItemsWidget(item: dummyList[index]);
            ;
          },
          itemCount: dummyList.length,
        )),
      ),
      drawer: MyDrawer(),
    );
  }
}
