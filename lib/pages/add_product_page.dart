import 'package:e_commerce/widgets/dropdown.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add product"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Add New Product',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold)),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('Product Name'),
                    hintText: "enter your product name..."),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('Product Name'),
                    hintText: "enter your product name..."),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('Product Description'),
                    hintText: "enter your product description..."),
                maxLines: 4,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('Image URL'),
                    hintText: "paste your image url..."),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text('product price'),
                    hintText: "Enter product price..."),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                      child: DropDownBtn(
                    Items: ['cate1', 'cate2', 'cate3'],
                    selectedItemText: 'Category',
                    onSelected: (selectedValue) {
                      print(selectedValue);
                    },
                  )),
                  Flexible(
                      child: DropDownBtn(
                    Items: ['brand1', 'brand2', 'brand3'],
                    selectedItemText: 'Brand',
                    onSelected: (selectedValue) {
                      print(selectedValue);
                    },
                  ))
                ],
              ),
              SizedBox(height: 10),
              Text("Offer product ?"),
              DropDownBtn(
                Items: ['avaliable', 'not avaliable'],
                selectedItemText: 'Offer',
                onSelected: (selectedValue) {
                  print(selectedValue);
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Color.fromARGB(255, 239, 230, 230)),
                  onPressed: () {},
                  child: Text("Add product"))
            ],
          ),
        ),
      ),
    );
  }
}
