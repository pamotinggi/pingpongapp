import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Warmup extends StatefulWidget {
  const Warmup({Key? key}) : super(key: key);

  @override
  State<Warmup> createState() => _WarmupState();
}

class _WarmupState extends State<Warmup> {
  late VideoPlayerController _controller;

  //untuk retrieve video
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/children-data.appspot.com/o/video%2FWARM%20UP.mp4?alt=media&token=95021962-c946-49b6-8070-8609a47dfaa3')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECA869),
        title: Text("Warm Up"),
      ),
      body: Stack(
          children: <Widget>[
            Container(
              color: Color(0xffF5F5DC),
            ),
            Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(child: CircularProgressIndicator(),),
            ),
          ],
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying
              ? EvaIcons.pauseCircle
              : EvaIcons.playCircle,
        ),
      ),
    );
  }
}
