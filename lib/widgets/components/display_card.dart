import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart';

class DisplayCard extends StatelessWidget {
  final String title; // Title of Card

  const DisplayCard({
    super.key, // Accept list of info box data
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          width: 350.0,
          height: null,
          decoration: BoxDecoration(
            boxShadow: Styles.normalBoxShadow,
            borderRadius: Styles.primaryBorderRadius,
          ),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.displayLarge?.copyWith(color: Styles.primary),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
