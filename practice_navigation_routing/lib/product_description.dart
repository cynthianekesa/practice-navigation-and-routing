import 'package:flutter/material.dart';
import 'product_listing.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF00ADB5),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              product.imageUrl,
              width: double.infinity, // Take full width
              height: 150, // Adjust the height as needed
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                product.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            
            Center(child: Text(product.description)),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Price: \$${product.price.toStringAsFixed(2)}', // Display price
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}