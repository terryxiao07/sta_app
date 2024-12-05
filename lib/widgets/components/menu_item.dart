import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart'; // Import the Styles file.

class MenuItem extends StatelessWidget {
  final String? imageUrl; // Made imageUrl optional
  final String itemName;
  final double price;

  const MenuItem({
    super.key,
    this.imageUrl, // Updated to allow null values
    required this.itemName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: Styles.mainVerticalPadding / 2,
        horizontal: Styles.mainHorizontalPadding,
      ),
      padding: const EdgeInsets.all(Styles.mainInsidePadding),
      decoration: BoxDecoration(
        border: Border.all(
          color: Styles.primary,
          width: 1.5,
        ),
        borderRadius: Styles.primaryBorderRadius,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image and Text Column
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8), // Rounded corners for the image
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
                        color: Styles.grey.withOpacity(0.2), // Placeholder background color
                        child: const Icon(
                          Icons.image_not_supported,
                          color: Styles.grey,
                        ),
                      ),
              ),
              const SizedBox(height: 8),
              Text(
                itemName,
                style: const TextStyle(
                  fontFamily: Styles.fontFamilyNormal,
                  fontSize: Styles.fontSizeMedium,
                  color: Styles.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16), // Space between image column and details
          // Item Details
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontFamily: Styles.fontFamilyNormal,
                    fontSize: Styles.fontSizeLarge,
                    color: Styles.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
