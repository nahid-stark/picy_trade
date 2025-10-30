import 'dart:developer';

import 'package:in_app_purchase/in_app_purchase.dart';

class PurchaseService {
  // final InAppPurchase _iap = InAppPurchase.instance;
  // bool available = false;
  // List<ProductDetails> products = [];
  // final List<String> _productIds = ['image_pack_1', 'image_pack_2'];
  //
  // Future<void> initStoreInfo() async {
  //   available = await _iap.isAvailable();
  //   if (!available) return;
  //
  //   ProductDetailsResponse response = await _iap.queryProductDetails(_productIds.toSet());
  //   products = response.productDetails;
  // }
  //
  // Future<void> buyProduct(ProductDetails product) async {
  //   final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
  //   await _iap.buyConsumable(purchaseParam: purchaseParam);
  // }
  final InAppPurchase _iap = InAppPurchase.instance;
  String? _productId;

  Future<void> buyConsumable(String id) async {
    _productId = id;
    final ProductDetailsResponse response = await _iap.queryProductDetails({_productId!});
    if(response.notFoundIDs.isNotEmpty) {
      log("Product Not Found");
      return;
    }

    final ProductDetails productDetails = response.productDetails.first;
    final PurchaseParam purchaseParam = PurchaseParam(productDetails: productDetails);
    await _iap.buyConsumable(purchaseParam: purchaseParam);

    _iap.purchaseStream.listen((purchases) async {
      for(var purchase in purchases) {
        if(purchase.status == PurchaseStatus.purchased) {
          await _iap.completePurchase(purchase);
        }
      }
    });
  }
}
