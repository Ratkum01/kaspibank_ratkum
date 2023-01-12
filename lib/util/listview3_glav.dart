import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListView3Glav extends StatelessWidget {
  final String text;
  final String boximage;
  final String text2;
  const ListView3Glav({required this.text, required this.boximage, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(2),
      height: 60,
      width: 320,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(boximage),
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 20),
              ),
               Text(
                text2,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
