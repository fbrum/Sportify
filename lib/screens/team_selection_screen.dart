import 'package:flutter/material.dart';

class TeamSelectionScreen extends StatefulWidget {
  final List<String> players;

  const TeamSelectionScreen({super.key, required this.players});

  @override
  _TeamSelectionScreenState createState() => _TeamSelectionScreenState();
}

class _TeamSelectionScreenState extends State<TeamSelectionScreen> {
  final List<String> _teamA = [];
  final List<String> _teamB = [];

  void _assignPlayer(String player, String team) {
    setState(() {
      _teamA.remove(player);
      _teamB.remove(player);

      if (team == "A") {
        _teamA.add(player);
      } else {
        _teamB.add(player);
      }
    });
  }

  void _startMatch() {
    if (_teamA.isNotEmpty && _teamB.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text("Team Selection")),
            body: const Center(
              child: Text("Team Selection Screen will be here"),
            ),
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Both teams need at least 1 player!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Teams")),
      body: ListView(
        children: [
          ...widget.players.map((player) {
            return ListTile(
              title: Text(player),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.group, color: Colors.blue),
                    onPressed: () => _assignPlayer(player, "A"),
                  ),
                  IconButton(
                    icon: Icon(Icons.group, color: Colors.red),
                    onPressed: () => _assignPlayer(player, "B"),
                  ),
                ],
              ),
            );
          }),
          Divider(),
          Text("Team A: ${_teamA.join(', ')}"),
          Text("Team B: ${_teamB.join(', ')}"),
          SizedBox(height: 20),
          ElevatedButton(onPressed: _startMatch, child: Text("Start Match")),
        ],
      ),
    );
  }
}
