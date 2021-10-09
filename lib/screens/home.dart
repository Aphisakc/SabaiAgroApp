import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showLogo() {
    return Container(
      width: 120.0,
      height: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showEngName() {
    return Text(
      'SABAI AGRO BUSINESS & INNOVATION COMPANY LIMITED',
      style: TextStyle(
          fontSize: 10.0,
          color: Colors.blue.shade700,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }
  Widget showThName() {
    return Text(
      'บริษัท สบาย อะโกร บิสซินเนส แอนด์ อินโนเวชั่น จำกัด',
      style: TextStyle(
          fontSize: 10.0,
          color: Colors.blue.shade700,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[showLogo(), showEngName(), showThName()]),
        ),
      ),
    );
  }
}
