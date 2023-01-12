import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaspibank_ratkum/util/listview2_glav.dart';

class Service_Pages extends StatelessWidget {
  const Service_Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Сервисы',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    'Қаз',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.red)),
                  child: Text(
                    'Рус',
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                )
              ],
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/ratkum.jpeg')),
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
                        'RatkuM',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Настройки',
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListView2Glav(
                          icon1: Icon(
                            Icons.shopping_cart_outlined,
                            size: 40,
                            color: Colors.red,
                          ),
                          text1: 'Магазин',
                          icon2: Icon(
                            Icons.card_giftcard_rounded,
                            size: 40,
                            color: Colors.red,
                          ),
                          text2: 'Акции'),
                      ListView2Glav(
                          icon1: Icon(
                            Icons.phonelink,
                            size: 40,
                            color: Colors.red,
                          ),
                          text1: 'Мой Банк',
                          icon2: Icon(
                            Icons.flight_takeoff,
                            size: 40,
                            color: Colors.red,
                          ),
                          text2: 'Travel'),
                      ListView2Glav(
                          icon1: Icon(
                            Icons.receipt_long,
                            size: 40,
                            color: Colors.red,
                          ),
                          text1: 'Платежи',
                          icon2: Icon(
                            Icons.account_balance,
                            size: 40,
                            color: Colors.red,
                          ),
                          text2: 'Госуслуги'),
                      ListView2Glav(
                          icon1: Icon(
                            Icons.import_export_sharp,
                            size: 40,
                            color: Colors.red,
                          ),
                          text1: 'Переводы',
                          icon2: Icon(
                            Icons.receipt_outlined,
                            size: 40,
                            color: Colors.red,
                          ),
                          text2: 'объявления'),
                    ],
                  ),
                  Container(
                    width: 170,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.person_outline,
                                  size: 40,
                                  color: Colors.red,
                                )),
                            Text(
                              'Гид',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        )),
                        Container(
                            child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  size: 40,
                                  color: Colors.red,
                                )),
                            Text(
                              'Kaspi Maps',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              padding: EdgeInsets.all(8),
              
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Партнерские сервисы',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/magnum.jpg')),
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
                              'Magnum',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Продукты с бесплатной доставкой',
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/market.jpg')),
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
                              'Market',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Покупай у рельных продавцов',
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
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
