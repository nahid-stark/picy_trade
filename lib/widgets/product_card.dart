import 'dart:ui';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Widget? child;

  const ProductCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.05),
                Colors.white.withOpacity(0.05),
              ],
            ),
            color: Colors.white.withValues(
              green: 0,
              red: 0,
              blue: 0,
              alpha: 0.1,
            ),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.white.withOpacity(0.6),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.25),
                blurRadius: 10,
                offset: const Offset(-5, -5), // Top-left highlight
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(5, 5), // Bottom-right depth
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
