import 'package:flutter/material.dart';
import 'package:widget/contants/app_text_contants.dart';
import 'package:widget/widget/stateles_widget_page.dart';
import 'package:kartal/kartal.dart';

import 'widget/stateful_widget_page.dart';
import 'widget/stateles_widget_page.dart';
import 'contants/app_color_contants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: StatelessPage(),/*Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: Center(
                  child: Text('U',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18))),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.account_box_outlined),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 4,
          title: const Text('Uber'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Hoşgeldiniz.',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    // Expanded tek bir satırda kendine kalan tüm alanı kaplar
                    flex: 5,
                    child: Container(
                      color: Colors.blueGrey.withOpacity(0.5),
                      height: 50,
                      //width: 300,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Ara',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          )),
                    ),
                  ),
                  const Expanded(flex: 1, child: Icon(Icons.search)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Geçmiş Yolculuklarınız',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16.0),
              Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.local_taxi_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Text(
                          'Kadıköy - Ataşehir',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                      ),
                      Text(
                        '56,90tl',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Placeholder(
                strokeWidth: 1,
                fallbackHeight: 30,
                fallbackWidth: 100,
                color: AppColorContants.placeHolderColor,
              ),
              GestureDetector(
                onTap: () {
                  print('selected tap');
                },
                onDoubleTap: () {
                  print('selected doubletap');
                },
                child: Icon(Icons.add_a_photo),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StatelessPage()));
                  },
                  child: Text(AppTextContants.buttonNextPage)),
              Divider(
                thickness: 20,
                color: AppColorContants.placeHolderColor,
              ),
              FlutterLogo(
                size: 50.0,
              ),
              TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context, builder: (context) => Column(
                      children: [
                        Text('Deneme yarı açılır pencere'),
                      ],
                    ));
                  },
                  child: Text(AppTextContants.showProgramingLanguage)),
            ],
          ),
        ),
      ),*/
    );
  }
}
