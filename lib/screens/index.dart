// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sabai_agro_product_app/screens/carousel.dart';
import 'package:sabai_agro_product_app/screens/iconseek.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  get textAlign => null;

  Widget showLogo() {
    return Container(
        width: 100.0, height: 100.0, child: Image.asset('images/logo.png'));
  }

  Widget showEnName() {
    return Text('SABAI AGRO',
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.normal,
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

  Widget showUnderline() {
    return Text(
      '__________________________________________________',
      textAlign: TextAlign.left,
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
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 10.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal),
    );
  }

  Widget tabName() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          showEnName(),
          showThName(),
          showUnderline(),
          Padding(padding: EdgeInsets.only(top: 5), child: showVision()),
        ]);
  }

  Widget headRow() {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
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

  Widget showMidText1() {
    return Text(
      'ผลิตภัณฑ์คุณภาพ คู่เกษตรกรไทย',
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 10.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal),
    );
  }

  Widget showMidText2() {
    return Text(
      'เติบโตให้แตกต่าง',
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal),
    );
  }

  Widget tabMidName() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          showMidText1(),
          showMidText2(),
        ]);
  }

  Widget midRow() {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          tabMidName(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.blue.shade400),
          child: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              headRow(),
              CarouselWithDotsPage(),
              midRow(),
              IconKey(),
            ]),
          ),
        ),
      ),
    );
  }
}
