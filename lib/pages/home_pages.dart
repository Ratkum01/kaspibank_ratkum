import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaspibank_ratkum/util/listview2_glav.dart';
import 'package:kaspibank_ratkum/util/listview4_glav.dart';
import 'package:kaspibank_ratkum/util/listview5_glav.dart';

import '../util/listview3_glav.dart';

class HomePage extends StatelessWidget {
  final List reklama = [
    'assets/images/reklama1.png',
    'assets/images/reklama2.png',
    'assets/images/reklama3.png',
    'assets/images/reklama1.png',
    'assets/images/reklama2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Container(
    
            child: TextField(
              decoration: InputDecoration(
                hoverColor: Colors.grey,
                fillColor: Colors.grey,
                focusColor: Colors.grey,
                // iconColor: Colors.grey,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                // labelText: 'Поиск по Kaspi.kz',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
              cursorColor: Colors.grey[500],
              style: TextStyle(color: Colors.black),
            ),
           
          )),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                padding: EdgeInsets.only(top: 15),
                color: Colors.white,
                height: 150,
                child: ListView.builder(
                  //reklama
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: reklama.length,
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(reklama[index])),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(8),
                        height: 90,
                        width: 170,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text('9 янаря -15 января'),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //ИКОНКИ 1
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //1СТэк
                    ListView2Glav(
                        icon1: Icon(
                          Icons.qr_code_scanner,
                          size: 40,
                          color: Colors.red,
                        ),
                        text1: 'Kaspi QR',
                        icon2: Icon(
                          Icons.shopping_cart_outlined,
                          size: 40,
                          color: Colors.red,
                        ),
                        text2: 'Магазин'),
                    //2СТэк
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
                    //3СТэк
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
                    //4СТэк
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
                        text2: 'Объявления'),
                  ],
                ),
              ),

              SizedBox(
                height: 0.5,
              ),
              //Magnum
              Container(
                height: 60,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/magnum.jpg'))),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Magnum",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "Продукты питания с бесплатной доставкой",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.navigate_next,
                        size: 40,
                        color: Colors.grey,
                      )
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              //ListView
              Container(
                height: 130,
                color: Color.fromARGB(255, 255, 255, 255),
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListView3Glav(
                            text: 'Рассрочка 0-0-3',
                            boximage: 'assets/images/1.png',
                            text2: '',
                          ),
                          ListView3Glav(
                            text: 'Kaspi Депозит',
                            boximage: 'assets/images/2.png',
                            text2: 'Эффиктивная ставка 15%',
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListView3Glav(
                            text: 'Kaspi Red',
                            boximage: 'assets/images/3.png',
                            text2: 'Рассрочка 0%',
                          ),
                          ListView3Glav(
                            text: 'Кредит Наличными',
                            boximage: 'assets/images/4.png',
                            text2: 'до 1млн тенге',
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListView3Glav(
                            text: 'Кредит на Покупки',
                            boximage: 'assets/images/5.png',
                            text2: 'Кредит или рассрочка 0%',
                          ),
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              //Широкий новость
              Container(
                height: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/images/reklama3.png'),
                  fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                height: 10,
              ),
              //Вы недавно смотрели
              Container(
                padding: EdgeInsets.all(12),
                height: 350,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Вы недавно смотрели',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Container(
                      height: 250,
                      color: Colors.white,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ListView4Glav(
                              image: 'assets/images/obyav1.jpg',
                              text1: "Logitech мышь",
                              text2: "мыши",
                              text3: '19 990 Tg',
                              text4: '6000 Tg'),
                          ListView4Glav(
                              image: 'assets/images/obyav2.jpg',
                              text1: "Logitech наушник",
                              text2: "наушники",
                              text3: '29 000 Tg',
                              text4: '9 600 Тg'),
                          ListView4Glav(
                              image: 'assets/images/obyav3.jpg',
                              text1: "Logitech клавиратура",
                              text2: "Клавиратуры",
                              text3: '49 000 Tg',
                              text4: '16 300 Tg'),
                          ListView4Glav(
                              image: 'assets/images/obyav4.jpg',
                              text1: "Iphone 11",
                              text2: "Смартфоны",
                              text3: '199 000 Tg',
                              text4: '63 300 Tg'),
                          ListView4Glav(
                              image: 'assets/images/obyav5.jpg',
                              text1: "Acer Nitro 5",
                              text2: "Ноутбуки",
                              text3: '399 000 Tg',
                              text4: '133 300 Tg'),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Все предложения',
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                          Icon(
                            Icons.navigate_next_rounded,
                            size: 30,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //Вас могут заинтересовать
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    //попробуй уд
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Вас могут заинтересовать',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            direction: Axis.horizontal,
                            children: [
                              ListView5_Glav(
                                  image: 'assets/images/obyav6.jpg',
                                  text1: 'CS 16 микров олновка',
                                  text2: 'Кухня',
                                  text3: '36 990 Tg',
                                  text4: '12 300 Tg'),
                              ListView5_Glav(
                                  image: 'assets/images/obyav7.jpg',
                                  text1: '98 LKD Чайник',
                                  text2: 'Кухня',
                                  text3: '12 990 Tg',
                                  text4: '4 300 Tg'),
                              ListView5_Glav(
                                  image: 'assets/images/obyav8.jpg',
                                  text1: 'Samsung S22',
                                  text2: 'Смартфоны',
                                  text3: '999 900 Tg',
                                  text4: '300 000 Tg'),
                              ListView5_Glav(
                                  image: 'assets/images/obyav11.jpg',
                                  text1: 'Apple watch',
                                  text2: 'Смартфоны',
                                  text3: '999 900 Tg',
                                  text4: '300 000 Tg'),
                              ListView5_Glav(
                                  image: 'assets/images/obyav10.jpg',
                                  text1: 'Galaxy Watch',
                                  text2: 'Смартфоны',
                                  text3: '999 900 Tg',
                                  text4: '300 000 Tg'),
                              ListView5_Glav(
                                  image: 'assets/images/obyav9.jpg',
                                  text1: 'Samsung S40',
                                  text2: 'Смартфоны',
                                  text3: '999 900 Tg',
                                  text4: '300 000 Tg'),
                            ],
                          ),
                        ],
                      ),
                    )),
              )
            ],
          )),
        ],
      ),
    );
  }
}
