// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motor_show_2024_app/views/calculate_ui.dart';
import 'package:motor_show_2024_app/views/honda_ui.dart';
import 'package:motor_show_2024_app/views/mazda_ui.dart';
import 'package:motor_show_2024_app/views/mitsubishi_ui.dart';
import 'package:motor_show_2024_app/views/toyota_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  //สร้างตัวแปรเก็บ views ที่จะไปใช้กับ BottomNavigationBar
  List<Widget> _showView = [
    ToyotaUI(),
    HondaUI(),
    CalculateUI(),
    MitsubishiUI(),
    MazdaUI()
  ];

  //สร้างตัวแปรเก็บหมายเลข currentIndex
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 255, 181, 85),
      //   title: Text(
      //     'คำนวณค่างวดรถ',
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      //   centerTitle: true,
      // ),
      body: _showView[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color.fromARGB(255, 255, 181, 85),
        activeColor: Colors.white,
        //style: TabStyle.react,
        initialActiveIndex: 1,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          TabItem(
            icon: Icon(
              Icons.car_rental,
              color: Colors.deepOrange
            ),
            title: 'Toyota',
          ),
          TabItem(
            icon: Icon(
              Icons.car_rental,
              color: Colors.deepOrange
            ),
            title: 'Honda',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.moneyBill1Wave,
              color: Colors.deepOrange
            ),
            title: 'คำนวณ',
          ),
          TabItem(
            icon: Icon(
              Icons.car_rental,
              color: Colors.deepOrange
            ),
            title: 'Mitsubishi',
          ),
          TabItem(
            icon: Icon(
              Icons.car_rental,
              color: Colors.deepOrange
            ),
            title: 'Mazda',
          ),
        ],
      ),
    );
  }
}
