import 'package:flutter/material.dart';

import '../models/products.dart';
import '../widgets/item_widget.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.menu),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Catalog App'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(816.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
          return ItemWidget(item: CatalogModel.items[index],);
        },),
      ),
    );
  }
}
