import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final String label;
  final IconData icon;  
  final Color color;
  final String value;
  final Color bg;


  const ChipWidget({super.key, required this.label, required this.icon, required this.color, required this.value,required this.bg });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bg.withAlpha(50),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromARGB(255, 57, 152, 117).withAlpha(80),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            IconData( icon.codePoint, fontFamily: icon.fontFamily, fontPackage: icon.fontPackage),
            color: color,
            size: 16,
            
          ),
          SizedBox(width: 9),
          Text(
            label,
            style: TextStyle(
              color: const Color.fromARGB(255, 68, 25, 25),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: const Color.fromARGB(255, 16, 41, 32).withAlpha(150),
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}