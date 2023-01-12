import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListView2Glav extends StatelessWidget {
  final Icon icon1;
  final String text1;
  final Icon icon2;
  final String text2;
  const ListView2Glav({super.key, required this.icon1, required this.text1, required this.icon2, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
                    children: [
                      Container(
                          child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: 
                           icon1
                          ),
                          Text(
                            text1,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      )),
                      Container(
                          child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: icon2
                          ),
                          Text(
                            text2,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      )),
                    ],
                  );
  }
}