import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart'; // Import the Styles file.
import 'package:app/widgets/components/title_card.dart';
import 'package:app/widgets/components/display_card.dart';
import 'package:app/widgets/components/info_box.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Styles.mainHorizontalPadding),
          child: Column(
            children: [
              TitleCard(title: "Menu"),
              DisplayCard(
                title: "Info Inside Card",
                description:
                    "idk just some random text",
                child: InfoBox(
                  name: "Infobox",
                  message: "This an infobox in case you were wondering",
                ),
              ),
              DisplayCard(
                title: "Info Inside Card",
                description:
                    "idk just some random text",
                child: InfoBox(
                  name: "Infobox",
                  message: "This an infobox in case you were wondering",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
