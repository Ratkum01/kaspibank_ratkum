import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Row_Straka extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  const Row_Straka(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 6, right: 6),
      child: Row(
        
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image)),
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Icon(
            Icons.navigate_next,
            size: 30,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
