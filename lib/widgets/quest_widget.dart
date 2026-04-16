import 'package:flutter/material.dart';

class QuestWidget extends StatelessWidget {
  final String title;
  final String reward;

    const QuestWidget({
    super.key,
    required this.title,
    required this.reward,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Quest "$title" Clicked!')),
        );
      },
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.orangeAccent.withAlpha(50),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: const Color.fromARGB(255, 57, 36, 7).withAlpha(70),
            width: 1,
          ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 66, 61, 55).withAlpha(30),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 244, 210, 166),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.warning_amber_rounded,
              color: const Color.fromARGB(255, 252, 66, 66),
              size: 24,
              ),
          ),
          Expanded( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(title,
              style: TextStyle(
                color: const Color.fromARGB(255, 66, 61, 55),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),),
              Text('Reward: $reward',
              style: TextStyle(
                color: const Color.fromARGB(255, 66, 61, 55).withAlpha(150),
                fontStyle: FontStyle.italic,
                fontSize: 12,
              ),),
            ],
          )
          )
        ],
      ),
      ),// Add your quest widget implementation here
    );
  }
}