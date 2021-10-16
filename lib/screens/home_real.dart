// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomeReal extends StatelessWidget {
  const HomeReal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget showLogo() {
      return Container(
          width: 120.0, height: 120.0, child: Image.asset('images/logo.png'));
    }

    Widget showEnName() {
      return Text('SABAI AGRO',
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal));
    }

    Widget showThName() {
      return Text(
        'บริษัท สบายอะโกร บิสซินเนส แอนด์ อินโนเวชั่น จำกัด',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 10.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          // decoration: TextDecoration.combine([
          //   TextDecoration.underline
          // ])
        ),
      );
    }

    Widget tabName() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            showEnName(),
            showThName(),
          ]);
    }

    Widget headRow() {
      return Padding(
        padding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            showLogo(),
            // SizedBox(height: 30.0),
            tabName(),
            // SizedBox(height: 30.0),

            // showEmail()
          ],
        ),
      );
    }

    Widget showVision() {
      return Text(
        'WE WILL GROW TOGETHER',
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal),
      );
    }

    Widget showEngName() {
      return Text(
        'SABAI AGRO BUSINESS & INNOVATION COMPANY LIMITED',
        style: TextStyle(
            fontSize: 9.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
      );
    }

    Widget midRow() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          showVision(),
          // SizedBox(height: 30.0),
          showEngName(),
          // SizedBox(height: 30.0),
        ],
      );
    }

    Widget againMidRow() {
      return Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [midRow()],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(color: Colors.blue.shade400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                headRow(),
                againMidRow(),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [sumTextVision(), sumTextCo(), sumTextTarget()],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

Widget showVision() {
  return Text(
    'วิสัยทัศน์',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}

Widget showTextVision() {
  return Text(
    'เป็นบริษัทธรรมาภิบาลทางการเกษตรชั้นนำของไทย ที่ประกอบด้วยบุคลากรที่เป็นคนดีคนเก่ง มีความมุ่งมั่นใส่ใจ และอุทิศตนในการส่งมอบปัจจัยการผลิตสู่พี่น้องเกษตรกร บนรากฐานของผลิตภัณฑ์ที่มีคุณภาพและนวัตกรรมระดับโลกรวมทั้งการให้การบริการทางวิชาการ',
    style: TextStyle(fontSize: 15, color: Colors.black),
  );
}

Widget sumTextVision() {
  return SizedBox(
    child: Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              showVision(),
              showTextVision(),
            ]),
      ),
    ),
  );
}

Widget showCo() {
  return Text(
    'พันธะกิจ',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}

Widget showTextCo() {
  return Text(
    'เรามุ่งมั่น ตั้งใจ และใส่ใจ ในการทำงาน เพื่อให้เกษตรกรไทยสามารถพัฒนาผลผลิตและผลกำไรให้มากขึ้น สามารถอยู่รอด เข้มเเข็งได้มากขึ้น และเจริญรุ่งเรืองได้อย่างยั่งยืน เพราะเรามีความเชื่อว่า ความเจริญรุ่งเรืองอย่างยั่งยืนของเกษตรกร คือความเจริญรุ่งเรืองของบริษัท สบาย อะโกร เช่นกัน',
    style: TextStyle(fontSize: 15, color: Colors.black),
  );
}

Widget sumTextCo() {
  return SizedBox(
    child: Container(
      color: Colors.blue[50],
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              showCo(),
              showTextCo(),
            ]),
      ),
    ),
  );
}

Widget showTarget() {
  return Text(
    'เป้าหมายของบริษัท',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}

Widget showTextTarget() {
  return Text(
    '1. เพื่อการพัฒนาผลผลิตและผลกำไรของเกษตรกรอย่างยั่งยืน\n2. เพื่อการพัฒนาผลประกอบการที่มีผลกำไร อย่างยั่งยืน\n\n เพราะความสำเร็จอย่างยั่งยืนของเกษตรกร คือ ความสำเร็จอย่างยั่งยืนของบริษัท สบาย อะโกร ด้วยเช่นกัน',
    style: TextStyle(fontSize: 15, color: Colors.black),
  );
}

Widget sumTextTarget() {
  return SizedBox(
    child: Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  showTarget(),
                  showTextTarget(),
                ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [bossPic()],
            )
          ],
        ),
      ),
    ),
  );
}

Widget bossPic() {
  return Container(
    width: 200.0,
    height: 200.0,
    child: Image.asset('images/boss1.png'),
  );
}
