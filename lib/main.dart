import 'package:flutter/material.dart';
import 'package:pertemuan4/widgets/chip_widget.dart';
import 'package:pertemuan4/widgets/header_widget.dart';
import 'package:pertemuan4/widgets/quest_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventure Guild',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Adventure Guild',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          backgroundColor: Colors.purpleAccent,
        ),
        body: Padding(
          padding: const EdgeInsetsGeometry.all(20),
          child: Column(
            children: [
              HeaderWidget(
                name: "John Doe",
                role: "Warrior",
                level: 99,
              ),
              SizedBox(height: 20),
              Row(
                spacing:8,
                children: [
                  ChipWidget(label: "HP", icon: Icons.favorite, color: Colors.red, value: "100", bg: Colors.redAccent ),
                  ChipWidget(label: "MP", icon: Icons.bolt, color: Colors.blue, value: "50", bg: Colors.blueAccent),
                  ChipWidget(label: "SP", icon: Icons.star, color: Colors.yellow, value: "25", bg: Colors.yellowAccent),
                ],
              ),
              Text('Active Quests'),
              QuestWidget()
            ],
          ),
        ),
      ),
    );
  }
}
