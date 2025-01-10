import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String imgURL;
  final String text;
  final double price;

  const ProductDetailPage({
    super.key,
    required this.imgURL,
    required this.text,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(text, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imgURL, width: 300, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(
              text,
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              "\$$price",
              style: const TextStyle(fontSize: 20, color: Colors.greenAccent),
            ),
          ],
        ),
      ),
    );
  }
}
