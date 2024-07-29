import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the video player controller with a video URL and set it to loop
    _controller = VideoPlayerController.network(
      'https://youtu.be/tS9854NKZ4I?si=ztOemwyRbVrV_ZCu', // Replace with your video URL
    )
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      })
      ..setLooping(true) // Set the video to loop
      ..play(); // Start playing the video
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
