import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/home_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Color.fromARGB(255, 255, 181, 85),
        autoScrollDuration: 5000,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            image: Image.asset(
              'assets/images/toyotaIntro.jpg',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            titleWidget: Center(
              child: Column(
                children: [
                  Text(
                    'Toyota',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Toyota Vios',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            bodyWidget: Text(
              'เป็นที่รู้จักในด้านประสิทธิภาพการใช้เชื้อเพลิง การออกแบบที่กะทัดรัดเหมาะกับการใช้งานในเมือง และเครื่องยนต์ที่ทนสุดๆ กลายเป็นตัวเลือกสำคัญสำหรับชาวออฟฟิศที่กำลังมองหารถเก๋งเล็กๆ',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
          ),
          PageViewModel(
            image: Image.asset(
              'assets/images/mitsuIntro.jpg',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            titleWidget: Center(
              child: Column(
                children: [
                  Text(
                    'Mitsubishi',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Mitsubishi Pajero Sport 2024',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            bodyWidget: Text(
              'รุ่นย่อยท็อปสุด จุดเด่นของรุ่นนี้คือได้รับการตกแต่งทั้งภายนอกและภายในให้โดดเด่นกว่ารุ่นย่อยอื่น ๆ นอกจากนี้ Pajero Sport 2024 ทุกรุ่นย่อย ยังมาพร้อมกับเครื่องยนต์ใหม่ คลีนดีเซล “ไฮเปอร์พาวเวอร์”',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
          ),
          PageViewModel(
            image: Image.asset(
              'assets/images/hondaIntro.jpg',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            titleWidget: Center(
              child: Column(
                children: [
                  Text(
                    'Honda',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'HONDA City Hatchback',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            bodyWidget: Text(
              'ซิตี้คาร์สปอร์ตแฮทช์แบ็ก 5 ประตู ยอดนิยมที่ได้รับการพัฒนาขึ้นอีกขั้นสู่การเป็น “Energetic & Safety Hatchback” สปอร์ตยิ่งขึ้นด้วยดีไซน์ภายนอกใหม่รอบคัน ห้องโดยสารกว้างขวาง มาพร้อมเบาะนั่งอัลตราซีท (ULTR)',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
          ),PageViewModel(
            image: Image.asset(
              'assets/images/mazdaIntro.jpeg',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            titleWidget: Center(
              child: Column(
                children: [
                  Text(
                    'Mazda',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Mazda2 Hybrid',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            bodyWidget: Text(
              'มีการปรับเปลี่ยนโฉมพอสมควร สังเกตได้จากภาพลักษณ์ของด้านหน้าและด้านหลัง ส่วนทางด้านขุมพลังจะมากับเครื่องยนต์ไฮบริด อุปกรณ์ภายใน และระบบควบคุมอากาศอัตโนมัติแบบ Multi-zone',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
        ),
        onSkip: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size(
            MediaQuery.of(context).size.width * 0.025,
            MediaQuery.of(context).size.width * 0.025,
          ),
          color: Colors.grey,
          activeSize: Size(
            MediaQuery.of(context).size.width * 0.055,
            MediaQuery.of(context).size.width * 0.025,
          ),
          activeColor: Colors.purple,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
        ),
        nextFlex: 0,
        done: Text(
          'หน้าหลัก',
        ),
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
      ),
    );
  }
}
