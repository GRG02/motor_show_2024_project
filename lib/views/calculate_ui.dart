import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculateUI extends StatefulWidget {
  const CalculateUI({super.key});

  @override
  State<CalculateUI> createState() => _CalculateUIState();
}

class _CalculateUIState extends State<CalculateUI> {
  int downMoney = 1;

  List<String> _downList = [
    '12 งวด (1 ปี)',
    '24 งวด (2 ปี)',
    '36 งวด (3 ปี)',
    '48 งวด (4 ปี)',
    '60 งวด (5 ปี)',
    '72 งวด (6 ปี)',
  ];

  String _downCurrent = '12 งวด (1 ปี)';

  //ควบคุม TextField
  TextEditingController carpriceCtrl = TextEditingController(text: '');
  TextEditingController interestCtrl = TextEditingController(text: '');

  //แสดงการแจ้งเตือน
  showWarningMessage(context, msg) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('แจ้งเตือน'),
          content: Text(msg),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 181, 85),
        title: Text(
          'คำนวณค่างวดรถ',
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
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'ราคารถ (บาท)',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ColoredBox(
                    color: Color.fromARGB(255, 240, 239, 239),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: carpriceCtrl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'เงินดาวน์ (%)',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: downMoney,
                      onChanged: (paramValue) {
                        setState(() {
                          downMoney = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '10%',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Radio(
                      value: 2,
                      groupValue: downMoney,
                      onChanged: (paramValue) {
                        setState(() {
                          downMoney = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '20%',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Radio(
                      value: 3,
                      groupValue: downMoney,
                      onChanged: (paramValue) {
                        setState(() {
                          downMoney = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '25%',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Radio(
                      value: 4,
                      groupValue: downMoney,
                      onChanged: (paramValue) {
                        setState(() {
                          downMoney = paramValue!;
                        });
                      },
                    ),
                    Text(
                      '30%',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'จำนวนปีที่ผ่อน',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: DropdownButton(
                    underline: Divider(
                      height: 1,
                      color: Colors.black,
                    ),
                    value: _downCurrent,
                    items: _downList
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  e,
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (paramValue) {
                      setState(() {
                        _downCurrent = paramValue!;
                      });
                    },
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'ดอกเบี้ย (%) ต่อปี',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ColoredBox(
                    color: Color.fromARGB(255, 240, 239, 239),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: interestCtrl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (carpriceCtrl.text.trim().isEmpty == true) {
                      showWarningMessage(context, 'ป้อนราคารถ (บาท) ด้วย');
                    } else if (interestCtrl.text.trim().isEmpty == true) {
                      showWarningMessage(context, 'ป้อนดอกเบี้ย (%) ต่อปีด้วย');
                    } else {
                      //แปรง input
                      int carprice = int.parse(carpriceCtrl.text);
                      int interest = int.parse(interestCtrl.text);
        
                      //ตัวแปรเงินดาวน์(บาท)
                      double downPrice = 0;
        
                      //หาเงินดาวน์(บาท)
                      if (downMoney == 1) {
                        downPrice = carprice * 10 / 100;
                      } else if (downMoney == 2){
                        downPrice = carprice * 20 / 100;
                      } else if (downMoney == 3){
                        downPrice = carprice * 25 / 100;
                      } else if (downMoney == 4){
                        downPrice = carprice * 30 / 100;
                      }
        
                      //ตัวแปรหายอดจัด(บาท)
                      double finance = carprice - downPrice;
        
                      //ตัวแปรหาจำนวนดอกเบี้ย(บาท)
                      double interestPrice = finance * interest / 100;
        
                      //ตัวแปรจำนวนปี
                      int totalYear = 0;
        
                      //หาจำนวนปี
                      if (_downCurrent == '12 งวด (1 ปี)') {
                        totalYear = 1;
                      } else if (_downCurrent == '24 งวด (2 ปี)'){
                        totalYear = 2;
                      } else if (_downCurrent == '36 งวด (3 ปี)'){
                        totalYear = 3;
                      } else if (_downCurrent == '48 งวด (4 ปี)'){
                        totalYear = 4;
                      } else if (_downCurrent == '60 งวด (5 ปี)'){
                        totalYear = 5;
                      } else if (_downCurrent == '72 งวด (6 ปี)'){
                        totalYear = 6;
                      }
        
                      //ตัวแปรหาดอกเบี้ยทั้งหมด
                      double totalInterest = interestPrice * totalYear;
        
                      //ตัวแปรหาจำนวนเงินผ่อนต่อเดือน(บาท)
                      double payMonth = (finance + totalInterest) / (totalYear * 12);
        
                      //ตัวแปรหาจำนวนเดือนผ่อน
                      int monthAmt = totalYear * 12;
        
                      //แปลง int เป็น text
                      
        
                      showWarningMessage(context, 'รถราคา ' + carpriceCtrl.text + ' บาท\nดาวน์ x% เป็นเงิน ' + downPrice.toStringAsFixed(2) + ' บาท\nจำนวนเดือนผ่อน ' + monthAmt.toStringAsFixed(0) + ' เดือน\nค่าผ่อนต่อเดือนเป็นเงิน ' + payMonth.toStringAsFixed(2) + ' บาท');
                    }
                  },
                  child: Text(
                    'คำนวณค่างวดรถ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 1,
                      MediaQuery.of(context).size.height * 0.07,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
