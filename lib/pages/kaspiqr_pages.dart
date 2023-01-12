import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kaspibank_ratkum/util/row_straka.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class KaspiQr_Pages extends StatefulWidget {
  const KaspiQr_Pages({super.key});
  @override
  State<KaspiQr_Pages> createState() => _KaspiQr_PagesState();
}

class _KaspiQr_PagesState extends State<KaspiQr_Pages> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? result;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  //Povtornaya sborka

  @override
  void reasseble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 255, 254, 254),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kaspi QR',
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Center(
                      child: Icon(Icons.close,
                          size: 30, color: Color.fromARGB(255, 255, 253, 253)),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            ),
          ),
          body: SlidingUpPanel(
            maxHeight: 250,
            minHeight: 150,
            body: Stack(
              alignment: Alignment.center,
              children: [
                buildQrView(context),
                Positioned(
                  top: 50,
                  child: buildText(),
                ),
                Positioned(
                  bottom: 80,
                  child: buildText(),
                )
              ],
            ),
            backdropEnabled: true,
            renderPanelSheet: false,
            panel: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0)),
              ),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                BarIndicator(),
                Container(
                  
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7,top: 5, bottom: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Оформить онлайн',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        ],
                      ),
                    ),
                   Row_Straka(image: 'assets/images/1.png', text1: 'Рассрочка 0-0-3', text2: ''),
                   Row_Straka(image: 'assets/images/3.png', text1: 'Kaspi RED', text2: 'Рассрочка 0%'),
                   Row_Straka(image: 'assets/images/11.png', text1: 'Kredit', text2: '')
                  ]),
                )
              ]),
            ),
          )),
    );
  }

  Widget buildText() => Text(
        'Сканируйте QR-code',
        style: TextStyle(color: Colors.white, fontSize: 18),
      );
  Widget buildTextButton() => Text(
        'Сканируйте QR-code',
        style: TextStyle(color: Colors.white, fontSize: 18),
      );
//сам qr code
  Widget buildQrView(BuildContext context) => QRView(
        key: qrKey,
        onQRViewCreated: onQRViewCreated,

        //рамки qr code
        overlay: QrScannerOverlayShape(
            //расположение  QR квадрата
            cutOutBottomOffset: 110,
            borderColor: Colors.red,
            borderRadius: 10,
            borderLength: 30,
            borderWidth: 10,
            //размер оласти Сканера 80% экрна
            cutOutSize: MediaQuery.of(context).size.width * 0.6),
      );

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
    controller.pauseCamera();
    controller.resumeCamera();
  }
}

class BarIndicator extends StatelessWidget {
  const BarIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 40,
        height: 3,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
