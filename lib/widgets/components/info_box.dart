import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart';

class InfoBox extends StatelessWidget {
  final String name;
  final String message;

  const InfoBox({
    super.key,
    required this.name,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: Styles.mainSpacing / 2),
      padding: const EdgeInsets.all(Styles.mainInsidePadding),
      width: 350.0,
      decoration: BoxDecoration(
        color: Styles.white, // White background
        border: Border.all(color: Styles.primary, width: 1), // Red outline
        borderRadius: Styles.primaryBorderRadius, // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontFamily: Styles.fontFamilyTitles,
              fontSize: Styles.fontSizeMedium,
              fontWeight: FontWeight.bold,
              color: Styles.primary,
            ),
          ),
          const SizedBox(height: Styles.mainSpacing / 2),
          Text(
            message,
            style: const TextStyle(
              fontFamily: Styles.fontFamilyNormal,
              fontSize: Styles.fontSizeMedium,
              color: Styles.primary,
            ),
          ),
        ],
      ),
    );
  }
}
