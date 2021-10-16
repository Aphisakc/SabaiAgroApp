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
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.60,
            decoration: BoxDecoration(color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  sumTextVision(),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

Widget showButtonVision() {
  return ElevatedButton(
    onPressed: () => print('CLick Event'),
    child: Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
      child: Center(
        child: Text(
          'วิสัยทัศน์',
          style: TextStyle(
              fontSize: 12.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget showTextVision() {
  return Text(
      'เป็นบริษัทธรรมาภิบาลทางการเกษตรชั้นนำของประเทศไทย ที่ประกอบไปด้วย...');
}

Widget sumTextVision() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        showButtonVision(),
        showTextVision(),
      ]);
}
