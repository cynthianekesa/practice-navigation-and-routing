import 'package:flutter/material.dart';
import 'product_description.dart';
import 'product_listing.dart';

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product('Pixel', 'This is the description for Pixel.', 'images/pixel.png', 500),
    Product('Laptop', 'This is the description for Laptop.', 'images/laptop.png', 1000),
    Product('Tablet', 'This is the description for Tablet.', 'images/tablet.png', 300),
    Product('Pendrive', 'This is the description for Pendrive.', 'images/pen_drive.png', 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Navigation', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF00ADB5),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ListTile(
              leading: Image.asset(
                products[index].imageUrl,
                width: 50,
                height: 100,
                fit: BoxFit.cover,
              ),
              title: Text(products[index].title),
              subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'), // Display price
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsPage(product: products[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}