import 'package:flutter/material.dart';
import 'package:picy_trade/widgets/background_widget.dart';
import 'package:picy_trade/widgets/product_card.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/icon/gmail.png",
                          height: 40,
                          width: 40,
                        ),
                        const Text(
                          "picyincorporation@gmail.com",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.cyanAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/icon/contact_number.png",
                          height: 40,
                          width: 40,
                        ),
                        const Text(
                          "+880 1994-757661",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.cyanAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/icon/address.png",
                          height: 40,
                          width: 40,
                        ),
                        const Text(
                          "Mirpur-10, Dhaka, Bangladesh",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.cyanAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/icon/whatsapp.png",
                          height: 40,
                          width: 40,
                        ),
                        const Text(
                          "+880 1994-757661",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.cyanAccent,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
