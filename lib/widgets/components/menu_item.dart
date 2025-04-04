import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart';

class MenuItem extends StatelessWidget {
  final String? imageUrl;
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
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
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
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Prevent unnecessary expansion
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: imageUrl != null
                    ? Image.network(
                        imageUrl!,
                        width: constraints.maxWidth * 0.6, // Scale image dynamically
                        height: constraints.maxWidth * 0.6,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        width: constraints.maxWidth * 0.6,
                        height: constraints.maxWidth * 0.6,
                        color: Styles.grey.withOpacity(0.2),
                        child: const Icon(
                          Icons.image_not_supported,
                          color: Styles.grey,
                        ),
                      ),
              ),
              const SizedBox(height: 6),
              Flexible( // Prevent text overflow
                child: Text(
                  itemName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: Styles.fontFamilyNormal,
                    fontSize: Styles.fontSizeMedium,
                    color: Styles.primary,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                '\$${price.toStringAsFixed(2)}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: Styles.fontFamilyNormal,
                  fontSize: Styles.fontSizeSmall,
                  color: Styles.secondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
