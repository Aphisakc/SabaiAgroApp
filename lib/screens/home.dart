import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showLogo() {
    return Container(
      width: 200.0,
      height: 200.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showEngName() {
    return Text(
      'SABAI AGRO BUSINESS & INNOVATION COMPANY LIMITED',
      style: TextStyle(
          fontSize: 12.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }

  Widget showThName() {
    return Text(
      'บริษัท สบาย อะโกร บิสซินเนส แอนด์ อินโนเวชั่น จำกัด',
      style: TextStyle(
          fontSize: 12.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }

  Widget welcomeBotton() {
    return ElevatedButton(onPressed: () {}, child: Text('WELCOME'));
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[welcomeBotton()],
    );
  }

  Widget showVision() {
    return Text(
      'WE WILL GROW TOGETHER',
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal),
    );
  }

  Widget iconEmail() {
    return Icon(Icons.email, color: Colors.white, size: 10.0);
  }

  Widget showEmail() {
    return Text(
      'sabai.sabai.1965@gmail.com',
      style: TextStyle(
          fontSize: 10.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal),
    );
  }

  Widget emailTab() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        iconEmail(),
        SizedBox(
          width: 4.0,
        ),
        showEmail()
      ],
    );
  }

  Widget iconLine() {
    return Icon(Icons.assignment_ind, color: Colors.white, size: 10.0);
  }

  Widget showLine() {
    return Text(
      '@sabai.sabai.1965',
      style: TextStyle(
          fontSize: 10.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal),
    );
  }

  Widget lineTab() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        iconLine(),
        SizedBox(
          width: 4.0,
        ),
        showLine()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
        child: Container(
          decoration: BoxDecoration(color: Colors.blue.shade400),
          child: Center(
            child: Column(mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showLogo(),
                  SizedBox(height: 30.0),
                  showEngName(),
                  SizedBox(height: 15.0),
                  showThName(),
                  SizedBox(height: 30.0),
                  showButton(),
                  SizedBox(height: 30.0),
                  showVision(),
                  SizedBox(height: 50.0),
                  Padding(
                    padding: const EdgeInsets.only(right:20.0),
                    child: emailTab(),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 67.0),
                    child: lineTab(),
                  ),
                  SizedBox(height: 10.0)

                ]),
          ),
        ),
      )

    );
  }
}
