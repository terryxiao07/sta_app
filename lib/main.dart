import 'package:app/widgets/components/title_card.dart';
import 'package:app/widgets/home/announcements.dart';
import 'package:app/widgets/home/chaplaincy_corner.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart';
import 'package:app/widgets/components/display_card.dart'; // Adjust the path based on your file structure.
import 'package:app/widgets/components/info_box.dart'; // Adjust the path based on your file structure.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: Styles.fontFamilyTitles,
            fontSize: Styles.fontSizeExtraLarge,
            fontWeight: FontWeight.bold,
            color: Styles.primary,
          ),
          bodyLarge: TextStyle(
            fontFamily: Styles.fontFamilyNormal,
            fontSize: Styles.fontSizeMedium,
            color: Styles.grey,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Top Menu Bar?',
            style: TextStyle(
              fontFamily: Styles.fontFamilyTitles,
              color: Styles.white,
            ),
          ),
          backgroundColor: Styles.primary,
          toolbarHeight: Styles.appBarHeight,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Styles.mainHorizontalPadding),
            child: Column(
              children: [
                const TitleCard(title: "Nima"),
                const Announcements(),
                const ChaplaincyCorner(),
                const DisplayCard(
                  title: "Info Inside Card",
                  description:
                      "This card contains an InfoBox component as its content.",
                  child: InfoBox(
                    name: "Infobox",
                    message:
                        "This an infobox in case you were wondering",
                  ),
                ),
                const SizedBox(height: Styles.mainSpacing),
                DisplayCard(
                  title: "Test Card - Welcome to the App!",
                  description:
                      "this is a reusable card with a button",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
