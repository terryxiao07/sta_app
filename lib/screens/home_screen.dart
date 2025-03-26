import 'package:flutter/material.dart';
import 'package:app/theme/styles.dart';
import 'package:app/widgets/home/welcome_banner.dart';
import 'package:app/widgets/home/announcements.dart';
import 'package:app/widgets/home/chaplaincy_corner.dart';
import 'package:app/widgets/home/featured_cafe_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWideScreen = constraints.maxWidth > 1080; // Breakpoint for 1080p screens
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Styles.mainHorizontalPadding),
              child: isWideScreen
                  ? const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              WelcomeBanner(),
                              Announcements(),
                              ChaplaincyCorner(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              FeaturedCafeItems(),
                            ],
                          ),
                        ),
                      ],
                    )
                  : const Column(
                      children: [
                        WelcomeBanner(),
                        Announcements(),
                        FeaturedCafeItems(),
                        ChaplaincyCorner(),
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }
}
