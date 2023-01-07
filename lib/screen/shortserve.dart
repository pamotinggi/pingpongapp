import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Shortserve extends StatefulWidget {
  const Shortserve({Key? key}) : super(key: key);

  @override
  State<Shortserve> createState() => _ShortserveState();
}

class _ShortserveState extends State<Shortserve> {
  late VideoPlayerController _controller;

  //untuk retrieve video
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/children-data.appspot.com/o/video%2FSHORT%20SERVE.mp4?alt=media&token=aa04fd0d-d607-44f7-9242-ed691494552d')
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
        title: Text("Short Serve"),
      ),
      body: Stack(
        children:[
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
