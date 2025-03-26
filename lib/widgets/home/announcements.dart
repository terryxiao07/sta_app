import 'dart:async';
import 'package:app/widgets/components/display_card.dart';
import 'package:app/widgets/components/info_box.dart';
import 'package:flutter/material.dart';

class Announcements extends StatefulWidget {
  const Announcements({super.key});

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  final List<Widget> _announcements = const [
    InfoBox(
      name: "Random Writing",
      message: "Writing out a bunch of different text just to test out the effect of this cycling through announcements!",
    ),
    InfoBox(
      name: "Poetry",
      message: "Never gonna give you up. Never gonna let you down. Never gonna run around and desert you. Never gonna make you cry. Never gonna say goodbye. Never gonna tell a lie, and hurt you.",
    ),
    InfoBox(
      name: "What does this even mean",
      message: "I can envision a being so great that nothing is greater. If this being does not exist, I propose a greater one that does because existence is greater than non-existence. But, I cannot propose a being greater than the greatest, therefore a being does exist",
    ),
  ];

  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSwitch();
  }

  void _startAutoSwitch() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _announcements.length;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Building Announcements Widget"); // Debugging

    return SizedBox(
      width: MediaQuery.of(context).size.width, // Ensure LayoutBuilder gets constraints
      child: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxWidth); // Debugging
          bool isWideScreen = constraints.maxWidth > 740;
          print(isWideScreen);

          return DisplayCard(
            title: "Announcements Board",
            description: "In case subheadings are needed, otherwise leave empty",
            child: isWideScreen
                ? 
                SizedBox(
                    width: double.infinity,
                    height: 150, // Ensuring fixed height for proper layout
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      transitionBuilder: (Widget child, Animation<double> animation) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                      child: Container(
                        key: ValueKey<int>(_currentIndex),
                        child: _announcements[_currentIndex], // Cycles through InfoBoxes
                      ),
                    ),
                  )
                : Column(
                    children: _announcements
                        .map((announcement) => Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: announcement,
                            ))
                        .toList(),
                  ),
          );
        },
      ),
    );
  }
}