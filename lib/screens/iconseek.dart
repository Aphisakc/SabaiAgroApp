import 'package:flutter/material.dart';

class IconKey extends StatelessWidget {
  const IconKey({Key? key}) : super(key: key);

  Widget showIconHome() {
    return Container(
        width: 100.0,
        height: 100.0,
        child: IconButton(
          onPressed: () {
            print('Click me');
          },
          icon: Icon(Icons.home),
          color: Colors.black,
          iconSize: 50.0,
        ));
  }

  Widget showTextHome() {
    return Text(
      "Home",
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }

  Widget sumIconHome() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [showIconHome(), showTextHome()],
    );
  }

  Widget showIconPlaProduct() {
    return Container(
        width: 100.0,
        height: 100.0,
        child: IconButton(
          onPressed: () {
            print('Click me');
          },
          icon: Icon(Icons.network_wifi),
          color: Colors.black,
          iconSize: 50.0,
        ));
  }

  Widget showTextPlaProduct() {
    return Text(
      "กลุ่มสินค้าปลา",
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }

  Widget sumIconPlaProduct() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [showIconPlaProduct(), showTextPlaProduct()],
    );
  }

  Widget showIconKungProduct() {
    return Container(
        width: 100.0,
        height: 100.0,
        child: IconButton(
          onPressed: () {
            print('Click me');
          },
          icon: Icon(Icons.thumb_up_rounded),
          color: Colors.black,
          iconSize: 50.0,
        ));
  }

  Widget showTextKungProduct() {
    return Text(
      "กลุ่มสินค้ากุ้ง",
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }

  Widget sumIconKungProduct() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        showIconKungProduct(),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: showTextKungProduct(),
        )
      ],
    );
  }

  Widget rowIcon1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [sumIconHome(), sumIconPlaProduct(), sumIconKungProduct()],
    );
  }

  Widget showIconDisease() {
    return Container(
        width: 100.0,
        height: 100.0,
        child: IconButton(
          onPressed: () {
            print('Click me');
          },
          icon: Icon(Icons.play_circle),
          color: Colors.black,
          iconSize: 50.0,
        ));
  }

  Widget showTextDisease() {
    return Text(
      "โรคสัตว์น้ำ",
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }

  Widget sumIconDisease() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [showIconDisease(), showTextDisease()],
    );
  }

  Widget showIconProgram() {
    return Container(
        width: 100.0,
        height: 100.0,
        child: IconButton(
          onPressed: () {
            print('Click me');
          },
          icon: Icon(Icons.tty_rounded),
          color: Colors.black,
          iconSize: 50.0,
        ));
  }

  Widget showTextProgram() {
    return Text(
      "โปรแกรมคำนวณ",
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }

  Widget sumIconProgram() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [showIconProgram(), showTextProgram()],
    );
  }

  Widget showIconContactUs() {
    return Container(
        width: 100.0,
        height: 100.0,
        child: IconButton(
          onPressed: () {
            print('Click me');
          },
          icon: Icon(Icons.thumb_up_rounded),
          color: Colors.black,
          iconSize: 50.0,
        ));
  }

  Widget showTextContactUs() {
    return Text(
      "ติดต่อเรา",
      style: TextStyle(
          fontSize: 15.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
    );
  }

  Widget sumIconContactUs() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        showIconContactUs(),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: showTextContactUs(),
        )
      ],
    );
  }

  Widget rowIcon2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [sumIconDisease(), sumIconProgram(), sumIconContactUs()],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[rowIcon1(), rowIcon2()],
        ),
      ),
    );
  }
}
