import 'package:flutter/material.dart';
import 'screens/player_setup_screen.dart';

void main() {
  runApp(const FootballTrackerApp());
}

class FootballTrackerApp extends StatelessWidget {
  const FootballTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Football Tracker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Manage Players (Player Setup screen)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PlayerSetupScreen()),
                );
              },
              child: const Text('Manage Players'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Setup Game (Team Selection screen)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const TeamSelectionScreenPlaceholder(),
                  ),
                );
              },
              child: const Text('Setup Game'),
            ),
          ],
        ),
      ),
    );
  }
}

// Temporary placeholder for Team Selection until we create the real screen
class TeamSelectionScreenPlaceholder extends StatelessWidget {
  const TeamSelectionScreenPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Setup Game')),
      body: const Center(child: Text('Team Selection Screen will be here')),
    );
  }
}
