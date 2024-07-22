import 'package:flutter/material.dart';
import 'package:video_360/video_360.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  String durationText = '';
  String totalText = '';
  late Video360Controller _controller;

  void _onVideo360ViewCreated(Video360Controller controller) {
    _controller = controller;
    // You can perform additional setup here if needed
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('360 Video View'),
      ),
      body: Center(
        child: Video360View(
          onVideo360ViewCreated: _onVideo360ViewCreated,
          url: 'https://youtu.be/hEdzv7D4CbQ?si=zHvGKL_JYaPYuViz',
          onPlayInfo: (Video360PlayInfo info) {
            setState(() {
              durationText = info.duration.toString();
              totalText = info.total.toString();
            });
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Duration: $durationText'),
            Text('Total: $totalText'),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: VideoScreen(),
));
