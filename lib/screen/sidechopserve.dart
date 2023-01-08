import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Sidechopserve extends StatefulWidget {
  const Sidechopserve({Key? key}) : super(key: key);

  @override
  State<Sidechopserve> createState() => _SidechopserveState();
}

class _SidechopserveState extends State<Sidechopserve> {
  late VideoPlayerController _controller;

  //untuk retrieve video
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/sidechopserve.mp4')
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
        title: Text("Side Chop Serve"),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
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
