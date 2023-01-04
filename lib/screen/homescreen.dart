import 'package:flutter/material.dart';
import 'package:pingpongapp/screen/history.dart';
import 'package:pingpongapp/screen/longserve.dart';
import 'package:pingpongapp/screen/quizpage.dart';
import 'package:pingpongapp/screen/raketgrip.dart';
import 'package:pingpongapp/screen/shortserve.dart';
import 'package:pingpongapp/screen/sidechopserve.dart';
import 'package:pingpongapp/screen/sidetopserve.dart';
import 'package:pingpongapp/screen/topspinserve.dart';
import 'package:pingpongapp/screen/warmup.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/headerping.png"),
                      fit: BoxFit.contain)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => History()));
                    },
                    child: Text("Sejarah pingpong"),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Raketgrip()));
                    },
                    child: Text("Cara pegang bet"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Warmup()));
                    },
                    child: Text("Warm Up"),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Longserve()));
                    },
                    child: Text("Long Serve"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Shortserve()));
                    },
                    child: Text("Short Server"),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sidechopserve()));
                    },
                    child: Text("Side Chop Serve"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sidetopserve()));
                    },
                    child: Text("Side Top Serve"),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Topspinserve()));
                    },
                    child: Text("Top Spin Serve"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Quizpage()));
                },
                child: Text("Kuiz"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
