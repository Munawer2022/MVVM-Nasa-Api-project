import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mvvm/res/theme_data.dart';
import 'package:mvvm/view/neoWs.dart';

import 'mars.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  var image = [
    'images/assets/asteroid_Eart.jpg',
    'images/assets/mars.jpg',
    // 'images/assets/search.jpg',
    'images/assets/TechTransfer.jpg',
    'images/assets/TLE.jpg',
  ];
  var text = [
    'Asteroid NeoWs',
    'Mars Rover Photos',
    // 'NASA Images',
    'TechTransfer',
    'Two Line Element',
  ];

  List url = [
    '/neoWs',
    '/mars',
    // '/marslibrary',
    '/techTransfer',
    '/tle',
  ];

  bool _iconclick = false;
  IconData _light = Icons.light_mode;
  IconData _dark = Icons.dark_mode;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              actions: [
                // Switch(
                //     value: _iconclick,
                //     onChanged: (newvalue) {
                //       setState(() {
                //         _iconclick = newvalue;
                //         currentTheme.toggleTheme();
                //       });
                //     }),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: IconButton(
                      splashRadius: 25,
                      onPressed: () {
                        setState(() {
                          _iconclick = !_iconclick;
                        });
                      },
                      icon: Icon(_iconclick ? _dark : _light,
                          color: theme.appBarTheme.backgroundColor)),
                )
              ],
              title: Text(
                'Topics',
                style: TextStyle(color: theme.appBarTheme.backgroundColor),
              ),
              leading: InkWell(
                onTap: () {
                  Get.back();
                },
                borderRadius: BorderRadius.circular(50),
                child: Icon(Icons.keyboard_arrow_left,
                    color: theme.appBarTheme.backgroundColor),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: ListView.builder(
                itemCount: url.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(
                          url[index],
                        );
                        // _navi[index];
                      },
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            image[index].toString(),
                            height: 170,
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                          ),
                          Container(
                            width: double.infinity,
                            height: 170,
                            // decoration: BoxDecoration(
                            color: Color.fromARGB(100, 22, 44, 33),
                            // border: Border.all(
                            //   width: 1,
                            //   color: Colors.white,
                            // )),
                          ),
                          Positioned(
                            top: 110,
                            left: 130,
                            child: Text(
                              text[index].toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }))));
  }
}
