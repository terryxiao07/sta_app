import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart'; // Import the Styles file.
import 'package:app/widgets/components/title_card.dart';
import 'package:app/widgets/home/announcements.dart';
import 'package:app/widgets/home/chaplaincy_corner.dart';
import 'package:app/widgets/home/featured_cafe_items.dart';
import 'package:app/widgets/components/display_card.dart';
import 'package:app/widgets/components/info_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Styles.mainHorizontalPadding),
          child: Column(
            children: [
              const TitleCard(title: "Title"),
              DisplayCard(
                title: "Test Card - Welcome to the App!",
                description: "this is a reusable card with a button...",
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Styles.secondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: Styles.primaryBorderRadius,
                    ),
                  ),
                  onPressed: () {
                    if (kDebugMode) {
                      print("DisplayCard Button Pressed!");
                    }
                  },
                  child: const Text(
                    "Click Me",
                    style: TextStyle(
                      fontFamily: Styles.fontFamilyNormal,
                      fontSize: Styles.fontSizeLarge,
                      color: Styles.white,
                    ),
                  ),
                ),
              ),
              const Announcements(),
              const FeaturedCafeItems(),
              const ChaplaincyCorner(),
              const DisplayCard(
                title: "DisplayCard",
                description:
                    "This is a Display, which contains a description (which is the text that you are reading) and a InfoBox component as its content!!!",
                child: InfoBox(
                  name: "Infobox",
                  message: "This an infobox in case you were wondering...",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
