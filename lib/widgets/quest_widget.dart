import 'package:flutter/material.dart';

class QuestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Quest Clicked!')),
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
            height: 25,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.task_alt,color: const Color.fromARGB(255, 230, 8, 8),),
          ),
          Expanded( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text('Defeat the Dragon',
              style: TextStyle(
                color: const Color.fromARGB(255, 66, 61, 55),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),),
              Text('Reward: 500 Gold',
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