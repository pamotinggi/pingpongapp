import 'package:flutter/material.dart';

class Shakehand extends StatefulWidget {
  const Shakehand({Key? key}) : super(key: key);

  @override
  State<Shakehand> createState() => _ShakehandState();
}

class _ShakehandState extends State<Shakehand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECA869),
        title: Text("Pegangan Shakehand"),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              color: Color(0xffF5F5DC),
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text("Berikut adalah cara pegangan shakehand :"),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/shakehand.png"),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
