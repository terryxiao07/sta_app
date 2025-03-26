import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart'; // Import the Styles file.

class MenuItem extends StatelessWidget {
  final String? imageUrl; // Optional image
  final String itemName;
  final double price;

  const MenuItem({
    super.key,
    this.imageUrl,
    required this.itemName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100, // Square shape
      height: 100,
      margin: const EdgeInsets.symmetric(
        vertical: Styles.mainVerticalPadding / 2,
        horizontal: Styles.mainHorizontalPadding,
      ),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Styles.primary,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(12), // Rounded edges for smooth appearance
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image with fallback if null
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: imageUrl != null
                ? Image.network(
                    imageUrl!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  )
                : Container(
                    width: 60,
                    height: 60,
                    color: Styles.grey.withOpacity(0.2),
                    child: const Icon(
                      Icons.image_not_supported,
                      color: Styles.grey,
                    ),
                  ),
          ),
          const SizedBox(height: 6),
          // Item name
          Text(
            itemName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: Styles.fontFamilyNormal,
              fontSize: Styles.fontSizeMedium,
              color: Styles.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          // Price
          Text(
            '\$${price.toStringAsFixed(2)}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: Styles.fontFamilyNormal,
              fontSize: Styles.fontSizeSmall,
              color: Styles.secondary, // Slightly softer color for price
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
