import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirstapp/models/catalog.dart';
import 'package:myfirstapp/widgets/drawer.dart';
import 'package:myfirstapp/widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items =
        List.from(productsData).map((items) => Items.fromMap(items)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
            child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                ? ListView.builder(
                    itemBuilder: (context, index) {
                      return ItemsWidget(item: CatalogModel.items[index]);
                      ;
                    },
                    itemCount: CatalogModel.items.length,
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  )),
      ),
      drawer: MyDrawer(),
    );
  }
}
