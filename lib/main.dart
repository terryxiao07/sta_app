import 'package:flutter/material.dart';
import 'package:app/widgets/reusable/display_card.dart'; // Import the DisplayCard widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Display Announcements',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Display Announcements'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // DisplayCard with three InfoBox announcements
              DisplayCard(
                title: 'Important Announcement 1',
                name: 'John Doe',
                message: 'There will be no classes tomorrow.',
                infoBoxesData: [
                  {'name': 'Info 1', 'message': 'Details for InfoBox 1'},
                  {'name': 'Info 2', 'message': 'Details for InfoBox 2'},
                  {'name': 'Info 3', 'message': 'Details for InfoBox 3'},
                ],
              ),
              const SizedBox(height: 20),
              DisplayCard(
                title: 'Important Announcement 2',
                name: 'Jane Smith',
                message: 'The school will be closed for maintenance.',
                infoBoxesData: [
                  {'name': 'Info A', 'message': 'Details for InfoBox A'},
                  {'name': 'Info B', 'message': 'Details for InfoBox B'},
                  {'name': 'Info C', 'message': 'Details for InfoBox C'},
                ],
              ),
              const SizedBox(height: 20),
              DisplayCard(
                title: 'Important Announcement 3',
                name: 'Admin',
                message: 'New semester begins next Monday.',
                infoBoxesData: [
                  {'name': 'Notice X', 'message': 'Details for InfoBox X'},
                  {'name': 'Notice Y', 'message': 'Details for InfoBox Y'},
                  {'name': 'Notice Z', 'message': 'Details for InfoBox Z'},
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
