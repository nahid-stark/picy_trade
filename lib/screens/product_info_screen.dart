import 'package:flutter/material.dart';
import 'package:picy_trade/widgets/background_widget.dart';
import 'package:picy_trade/widgets/product_card.dart';

class ProductInfoScreen extends StatefulWidget {
  const ProductInfoScreen({super.key});

  @override
  State<ProductInfoScreen> createState() => _ProductInfoScreenState();
}

class _ProductInfoScreenState extends State<ProductInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 150),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ProductCard(
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "We are offering ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.cyanAccent,
                        ),
                      ),
                      TextSpan(
                        text: "High Quality Images ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "for ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.cyanAccent,
                        ),
                      ),
                      TextSpan(
                        text: "Low Price",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
