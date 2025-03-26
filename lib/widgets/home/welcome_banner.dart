import 'package:app/widgets/components/title_card.dart';
import 'package:flutter/material.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return const TitleCard(
      title: "Welcome to the App!",
    );
  }
}
