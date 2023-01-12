import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaspibank_ratkum/util/sms_list.dart';

class Sms_Pages extends StatelessWidget {
  const Sms_Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Сообщение',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Sms_List(
                image: 'assets/images/2.png',
                text1: 'Kaspi депозит',
                text2: 'Kaspi Депозит D-003 Пополнение 5000Т',
                timetext: '00:14'),
          ),
          Sms_List(
              image: 'assets/images/6.png',
              text1: 'Kaspi Gold',
              text2: 'Перевод 5 000 Т На Kaspi Депозит',
              timetext: '00:14'),
          Sms_List(
              image: 'assets/images/11.png',
              text1: 'Акции',
              text2: 'Получайте 10% бонусов за конструкторы , куклы, фигурки персонажей и другие игрушки',
              timetext: 'вчера'),
          Sms_List(
              image: 'assets/images/11.png',
              text1: 'Объявления',
              text2: 'Широкий выбор товаров и услуг от реальных продавцов!',
              timetext: '10.01.2023'),
              Sms_List(
              image: 'assets/images/12.png',
              text1: 'Платежи',
              text2: 'Квитанция оплачена',
              timetext: '09.01.2023'),
               Sms_List(
              image: 'assets/images/9.png',
              text1: 'Kaspi Бонус',
              text2: 'Начисленно: 9 000 000 бонусов',
              timetext: '30.12.2022'),
              Sms_List(
              image: 'assets/images/10.png',
              text1: 'Ежемесячный платеж',
              text2: 'Все кредиты Платеж погашен УРА!!!',
              timetext: '29.12.2022'),
               Sms_List(
              image: 'assets/images/3.png',
              text1: 'Kaspi RED',
              text2: 'Зачем тебе Каспи Ред друг лучше не бери и не',
              timetext: '21.12.2022'),
        ]));
  }
}
