import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String role;
  final int level;

  const HeaderWidget({super.key,required this.name, required this.role, required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromARGB(255, 73, 173, 219)  , const Color.fromARGB(179, 182, 233, 244)],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://picsum.photos/id/237/200/300"),
              ),
              Positioned(
                right: 17,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text('Level $level',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),),
                  
                ),
              )
            ],
          ),
          SizedBox(width: 20),
          Expanded(
            child:Column(
              crossAxisAlignment: .start,
              children: [
                Text(name  ,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: .bold,
                  fontSize: 16,
                ),),
                Text(role,
                style: TextStyle(
                  color: const Color.fromARGB(255, 121, 68, 68),
                  fontStyle: .italic,
                  fontSize: 14,
                ),),
              ],
            ),
            )
          ],
      ),
    );
  }
}