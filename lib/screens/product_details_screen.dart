import 'package:flutter/material.dart';
import 'package:picy_trade/utility/purchase_service.dart';
import 'package:picy_trade/widgets/background_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Map<String, dynamic> imageDetails;

  const ProductDetailsScreen({super.key, required this.imageDetails});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final PurchaseService _purchaseService = PurchaseService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: BackgroundWidget(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildImageViewer(),
              Text(
                "Price: \$ ${widget.imageDetails["Price"]}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.cyanAccent,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Image ID : ${widget.imageDetails["Id"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Text(
                    "Date : ${widget.imageDetails["MetaData"]["Date"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Text(
                    "Photographer : ${widget.imageDetails["MetaData"]["Photographer"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Text(
                    "Camera Used : ${widget.imageDetails["MetaData"]["Camera"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Text(
                    "Resolution : ${widget.imageDetails["MetaData"]["Resolution"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Text(
                    "Focal Length : ${widget.imageDetails["MetaData"]["Focal Length"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
              buildPurchaseButton(),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildPurchaseButton() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.purple, Colors.pink, Colors.green],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            _purchaseService.buyConsumable(widget.imageDetails["Id"]);
          },
          child: const Text(
            'Confirm Purchase',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Container buildImageViewer() {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.green, width: 2),
        image: DecorationImage(
          image: AssetImage(widget.imageDetails["Address"]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
