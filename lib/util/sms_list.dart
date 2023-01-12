import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sms_List extends StatelessWidget {
  final String image;
   final String text1;
    final String text2;
     final String timetext;
  const Sms_List({super.key, required this.image, required this.text1, required this.text2, required this.timetext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(8),
      color: Colors.white,
      child: Column(children: [
        Container(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(image, height: 40,width: 50,),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Container(
                        width: 230,
                        child: Text(
                          text2,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  timetext,
                  style: TextStyle(color: Colors.grey),
                )
              ]),
        )
      ]),
    );
  }
}
