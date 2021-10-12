import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  Widget showLogo() {
    return Container(
        width: 100.0, height: 100.0, child: Image.asset('images/logo.png'));
  }

  Widget showEnName() {
    return Text(
        'SABAI AGRO',
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal)
    );
  }

  Widget showThName() {
    return Text(
      'บริษัท สบายอะโกร บิสซินเนส แอนด์ อินโนเวชั่น จำกัด',
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

  Widget showUnderline() {
    return Text(
      '---------------------------------------------------------',
      style: TextStyle(
          fontSize: 10.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          // decoration: TextDecoration.combine([
          //   TextDecoration.underline
          // ])
      ),
    );
  }

  Widget showVision() {
    return Text(
      'WE WILL GROW TOGETHER',
      style: TextStyle(
          fontSize: 10.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal),
    );
  }

  Widget tabName() {
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      showEnName(),
      showThName(),
      showUnderline(),
      showVision(),
    ]);
  }

  Widget headRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        showLogo(),
        SizedBox(height: 30.0),
        tabName(),
        SizedBox(height: 30.0),

        // showEmail()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.blue.shade400),
          child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  headRow(),
                ]
            ),
          ),

        ),

      ),
    );
  }
}
