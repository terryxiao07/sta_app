import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart'; // Import the Styles file.

class TitleCard extends StatelessWidget {
  final String title;

  const TitleCard({
    super.key,
    required this.title,
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
      color: Styles.primary, // Background color set to primary
      child: Padding(
        padding: const EdgeInsets.all(Styles.mainInsidePadding),
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: Styles.fontFamilyTitles,
            fontSize: Styles.fontSizeExtraLarge,
            color: Styles.white, // Text color set to white
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
