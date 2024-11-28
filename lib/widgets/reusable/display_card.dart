import 'package:flutter/material.dart';
import 'package:app/widgets/reusable/info_box.dart';
import 'package:app/theme/styles.dart';

class DisplayCard extends StatelessWidget {
  final String title;
  final String name;
  final String message;
  final List<Map<String, String>> infoBoxesData; // List of info box data

  const DisplayCard({
    super.key,
    required this.title,
    required this.name,
    required this.message,
    required this.infoBoxesData, // Accept list of info box data
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    // Create a list of InfoBox widgets from the infoBoxesData
    List<Widget> infoBoxes = infoBoxesData.map((infoBoxData) {
      return InfoBox(
        name: infoBoxData['name'] ?? '',
        message: infoBoxData['message'] ?? '',
      );
    }).toList();

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
                  // Display the list of InfoBox widgets
                  ...infoBoxes,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
