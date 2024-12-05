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
            name: "Announcement 1",
            message: "This is the subheading for annoucement 1. I am adding text for no reason.",
          ),
          SizedBox(height: 16), // Spacing between InfoBoxes
          InfoBox(
            name: "Announcement 2",
            message: "This is the subheading for annoucement 2. I am adding text for no reason.",
          ),
          SizedBox(height: 16),
          InfoBox(
            name: "Announcement 3",
            message: "This is the subheading for annoucement 3. I am adding text for no reason.",
          ),
        ],
      ),
    );
  }
}
