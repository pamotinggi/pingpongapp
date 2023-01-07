import 'package:flutter/material.dart';
import 'package:pingpongapp/screen/penhold.dart';
import 'package:pingpongapp/shakehand.dart';

class Raketgrip extends StatefulWidget {
  const Raketgrip({Key? key}) : super(key: key);

  @override
  State<Raketgrip> createState() => _RaketgripState();
}

class _RaketgripState extends State<Raketgrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECA869),
        title: Text("Cara pegang bet"),
      ),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffECA869),
                    ),
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Penhold()));
                    },
                    child: Text(
                        "Penhold"
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffECA869),
                    ),
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Shakehand()));
                    },
                    child: Text(
                        "Shakehand"
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
