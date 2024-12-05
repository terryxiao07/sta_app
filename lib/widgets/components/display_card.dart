import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart'; // Import the Styles file.

class DisplayCard extends StatelessWidget {
  final String title;
  final String? description; // Made description optional
  final Widget? child;

  const DisplayCard({
    super.key,
    required this.title,
    this.description, // Updated to accept null values
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(
        horizontal: Styles.mainHorizontalPadding,
        vertical: Styles.mainVerticalPadding,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: Styles.mainBorderRadius,
      ),
      color: Styles.white, // Set background color to white
      shadowColor: Styles.primary.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: Styles.fontFamilyTitles,
                fontSize: Styles.fontSizeExtraLarge,
                color: Styles.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (description != null) ...[ // Conditionally render the description
              const SizedBox(height: Styles.mainSpacing / 2),
              Text(
                description!,
                style: const TextStyle(
                  fontFamily: Styles.fontFamilyNormal,
                  fontSize: Styles.fontSizeMedium,
                  color: Styles.primary, // Set description color to primary
                ),
              ),
            ],
            if (child != null) ...[
              const SizedBox(height: Styles.mainSpacing),
              child!,
            ],
          ],
        ),
      ),
    );
  }
}
