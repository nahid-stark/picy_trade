import 'package:flutter/material.dart';
import 'package:picy_trade/widgets/background_widget.dart';
import 'package:picy_trade/widgets/product_card.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 150),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ProductCard(
              child: Center(
                child: Text(
                  "You can buy images though Google Play Payments. We will provide an unique purchase token and an Email address after complete payment. Please send this Token to the Email and we deliver the original high quality image though your Email. THANK YOU!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.cyanAccent
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
