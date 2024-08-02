import 'package:e_commerce/pages/add_product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shopify'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, Index) {
            return ListTile(
                title: Text('title'),
                subtitle: Text('price:100'),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    print('delete');
                  },
                ));
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(AddProductPage());
          },
          child: Icon(Icons.add)),
    );
  }
}
