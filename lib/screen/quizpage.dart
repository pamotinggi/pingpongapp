import 'package:flutter/material.dart';

import '../model/quiz.dart';
import '../model/result.dart';

class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  static const _data = [
    {
      'questionText': 'Ping pong dimainkan secara ',
      'answers': [
        {'text': 'berseorangan dan beregu', 'score': 10.0},
        {'text': 'berseorangan dan bertiga', 'score': 0.0},
        {'text': 'beregu dan bertiga', 'score': 0.0},
        {'text': 'berempat dan berlima', 'score': 0.00},
      ]
    },
    {
      'questionText': 'Permainan ping pong menggunakan sistem',
      'answers': [
        {'text': 'mata 21', 'score': 0.0},
        {'text': 'mata 15', 'score': 0.0},
        {'text': 'mata 11', 'score': 10.0},
        {'text': 'mata 9', 'score': 0.0},
      ]
    },
    {
      'questionText': 'Deuce bermaksud',
      'answers': [
        {'text': 'seorang pemain telah memenangi perlawanan', 'score': 0.0},
        {'text': 'bola ping pong terkena jaring', 'score': 0.0},
        {'text': 'menentukan giliran pemain memulakan servis', 'score': 0.0},
        {'text': 'kedua-dua pemain mendapat 10 mata', 'score': 10.0}
      ]
    },
    {
      'questionText': 'Kemenangan perlawanan ditentukan dengan jumlah permainan berikut kecuali',
      'answers': [
        {'text': '2', 'score': 10.0},
        {'text': '3', 'score': 0.0},
        {'text': '5', 'score': 0.0},
        {'text': '7', 'score': 0.0}
      ]
    },
    {
      'questionText': 'Pemenang undian akan mendapat____pilihan sebelum memulakan permainan',
      'answers': [
        {'text': '2', 'score': 0.0},
        {'text': '3', 'score': 10.0},
        {'text': '4', 'score': 0.0},
        {'text': '5', 'score': 0.0}
      ]
    },
    {
      'questionText': 'Bola perlua diletakkan di tapak tangan dalam keadaan___',
      'answers': [
        {'text': 'di belakangan badan pemain', 'score': 0.0},
        {'text': 'di bawah meja', 'score': 0.0},
        {'text': 'digenggam di atas permukaan meja', 'score': 0.0},
        {'text': 'terbuka di atas permukaan meja', 'score': 10.0}
      ]
    },
    {
      'questionText': 'Servis Let akan diberi jika____ ',
      'answers': [
        {'text': 'bola servis tidak terkenaa jaring', 'score': 0.0},
        {'text': 'diberi waktu rehat', 'score': 0.0},
        {'text': 'bola servis terkena jaring', 'score': 10.0},
        {'text': 'bola servis tidak memasuki kawasan pihak lawan', 'score': 0.0}
      ]
    },
    {
      'questionText': 'Ketinggian jaring dari permukaan meja adalah____',
      'answers': [
        {'text': '15.25 cm', 'score': 10.0},
        {'text': '14.55 cm', 'score': 0.0},
        {'text': '12.50 cm', 'score': 0.0},
        {'text': '10.50 cm', 'score': 0.0}
      ]
    },
    {
      'questionText': 'Kawasan permainan mesti berbentuk______',
      'answers': [
        {'text': 'bulatan', 'score': 0.0},
        {'text': 'segi empat sama', 'score': 0.0},
        {'text': 'segi empat tepat', 'score': 10.0},
        {'text': 'segitiga', 'score': 0.0}
      ]
    },
    {
      'questionText': 'Persukutan Tenis Meja Antarabangsa(ITTF) ditubuhkan pada tahun___',
      'answers': [
        {'text': '1932', 'score': 0.0},
        {'text': '1926', 'score': 10.0},
        {'text': '1920', 'score': 0.0},
        {'text': '1924', 'score': 0.0}
      ]
    },
  ];
  var _indexQuestion = 0;
  double _totalScore = 0.00;

  //simple ways untuk calculate jumlah score yang diperoleh
  void _answerQuestion(double score) {
    _totalScore += score;

    setState(() {
      _indexQuestion += 1;
    });
  }
//untuk restart the whole quiz lepas habis jawab semua soalan
  void _restart() {
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECA869),
        title: Text(
          "Kuiz Ping Pong"
        ),
      ),
      body: Stack(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color(0xffF5F5DC),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Pilih jawapan yang betul",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: (_indexQuestion <= 9 && _indexQuestion >= 0)
                      ? Quiz(
                      answerQuestion: _answerQuestion,
                      indexQuestion: _indexQuestion,
                      data: _data)
                      : Result(_totalScore, _restart),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffECA869),
                  ),
                  onPressed: () {
                    _restart();
                  },
                  child: Text("Restart"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
