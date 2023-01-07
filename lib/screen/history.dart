import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECA869),
        title: Text("Sejarah Ping Pong"),
      ),
      body: Container(
        child: SfPdfViewer.network(
            'https://firebasestorage.googleapis.com/v0/b/children-data.appspot.com/o/storybook%2Fpingpong.pdf?alt=media&token=2f66c8f7-2f90-4354-a517-38979b90c688',
            pageLayoutMode: PdfPageLayoutMode.single),
      ),
    );
  }
}
