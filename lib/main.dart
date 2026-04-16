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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Adventure Guild',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderWidget(
                name: "Vito San Andreas",
                role: "Ucok Hunter",
                level: 100,
              ),
              SizedBox(height: 20),
              Row(
                spacing: 8,
                children: [
                  ChipWidget(label: "HP", icon: Icons.favorite, color: Colors.red, value: "100", bg: Colors.redAccent),
                  ChipWidget(label: "MP", icon: Icons.bolt, color: Colors.blue, value: "50", bg: Colors.blueAccent),
                  ChipWidget(label: "SP", icon: Icons.star, color: Colors.yellow, value: "25", bg: Colors.yellowAccent),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Active Quests',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: QuestWidget(
                  title: "Minta maaf ke compiler sambil nangis",
                  reward: "Error Hilang Satu",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: QuestWidget(
                  title: "Ketik kode pakai jempol kaki",
                  reward: "Gaji Programmer Senior",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: QuestWidget(
                  title: "Push ke main tanpa testing",
                  reward: "Surat Peringatan (SP1)",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}