import 'package:flutter/material.dart';

import '../models/products.dart';

class ItemWidget extends StatelessWidget {

  final Item item;

  const ItemWidget({Key? key, required this.item}) :
        assert(item != null),
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(item.image,width: 100,height: 100,) ,
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text('\$${item.price}',
      style:TextStyle(
        color: Colors.deepPurple,
        fontWeight: FontWeight.bold,
      ) ,),
    );
  }
}
