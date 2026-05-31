import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 12),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HobbyCard(
              title: 'Travelling',
              icon: Icons.public,
              color: Colors.green,
            ),
            HobbyCard(title: 'Reading', icon: Icons.book, color: Colors.orange),
            HobbyCard(
              title: 'Music',
              icon: Icons.music_note,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
