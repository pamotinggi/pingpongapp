import 'package:flutter/material.dart';

class Penhold extends StatefulWidget {
  const Penhold({Key? key}) : super(key: key);

  @override
  State<Penhold> createState() => _PenholdState();
}

class _PenholdState extends State<Penhold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECA869),
        title: Text("Pegangan Penhold"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Berikut adalah cara pegangan penhold :"),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/penhold.png"),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
