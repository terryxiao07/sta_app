import 'package:app/widgets/components/display_card.dart';
import 'package:app/widgets/components/info_box.dart';
import 'package:flutter/material.dart';

class ChaplaincyCorner extends StatelessWidget {
  const ChaplaincyCorner({super.key});

  @override
  Widget build(BuildContext context) {
    return const DisplayCard(
      title: "Chaplaincy Corner",
      child: Column(
        children: [
          InfoBox(
            name: "Verse of The Day",
            message: "So we fix our eyes not on what is seen, but on what is unseen, since what is seen is temporary, but what is unseen is eternal.",
          ),
          SizedBox(height: 16), // Spacing between InfoBoxes
          InfoBox(
            name: "Additional",
            message: "Subheading",
          ),
        ],
      ),
    );
  }
}
