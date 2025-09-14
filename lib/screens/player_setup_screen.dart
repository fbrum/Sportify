import 'package:flutter/material.dart';

class PlayerSetupScreen extends StatefulWidget {
  const PlayerSetupScreen({super.key});

  @override
  _PlayerSetupScreenState createState() {
    return _PlayerSetupScreenState();
  }
}

class _PlayerSetupScreenState extends State<PlayerSetupScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _players = [];

  void _addPlayer() {
    if (_controller.text.trim().isNotEmpty) {
      setState(() {
        _players.add(_controller.text.trim());
        _controller.clear();
      });
    }
  }

  void _goToTeamSelection() {
    if (_players.length >= 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text("Team Selection")),
            body: const Center(child: Text("Team Selection Screen will be here")),
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Add at least 2 players!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Players")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(labelText: "Player name"),
                  ),
                ),
                IconButton(icon: Icon(Icons.add), onPressed: _addPlayer),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _players.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(_players[index]));
                },
              ),
            ),
            ElevatedButton(
              onPressed: _goToTeamSelection,
              child: Text("Next: Select Teams"),
            ),
          ],
        ),
      ),
    );
  }
}
