import 'package:flutter/material.dart';
import 'package:picy_trade/widgets/background_widget.dart';
import 'package:picy_trade/widgets/product_card.dart';

class OurPoliciesScreen extends StatefulWidget {
  const OurPoliciesScreen({super.key});

  @override
  State<OurPoliciesScreen> createState() => _OurPoliciesScreenState();
}

class _OurPoliciesScreenState extends State<OurPoliciesScreen> {
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
                  "We are selling high quality images for your personal or business usages. We may sell a single image to multiple buyers because these are very cheap at price compare to image quality. Every buyer will have same rights to the images. Everyone can use these images anywhere. We will deliver original, full resolution image though your Email. No refund available. THANK YOU",
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
