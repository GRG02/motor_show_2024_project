import 'package:flutter/material.dart';

class HondaUI extends StatefulWidget {
  const HondaUI({super.key});

  @override
  State<HondaUI> createState() => _HondaUIState();
}

class _HondaUIState extends State<HondaUI> {
  //สร้างตัวแปรเก็บรูปรถแต่ละประเภท
  List<String> _car = [
    'assets/images/test.png',
    'assets/images/test.png',
    'assets/images/test.png',
    'assets/images/test.png',
    'assets/images/test.png',
  ];

  List<String> _carInfo = [
    'ชื่อXXXXX',
    'ชื่อXXXXX',
    'ชื่อXXXXX',
    'ชื่อXXXXX',
    'ชื่อXXXXX',
  ];

  List<String> _carPrice = [
    'XXXXXXX บาท',
    'XXXXXXX บาท',
    'XXXXXXX บาท',
    'XXXXXXX บาท',
    'XXXXXXX บาท',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 181, 85),
        title: Text(
          'Honda',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: 40.0,
              right: 40.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'รถเก๋ง',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _car.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 3,
                          right: 3,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                _car[index],
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              _carInfo[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              _carPrice[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'รถ SUV',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _car.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 3,
                          right: 3,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                _car[index],
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              _carInfo[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              _carPrice[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'รถกระบะ',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _car.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 3,
                          right: 3,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                _car[index],
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              _carInfo[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              _carPrice[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'รถ Van',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _car.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 3,
                          right: 3,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                _car[index],
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              _carInfo[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              _carPrice[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
