import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key, required this.link});
  final String link;

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  final String _videoUrl =
      'https://www.example.com/sample_video.mp4'; // Replace with your video URL

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri(path: widget.link));
    _controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : CircularProgressIndicator(); // Show loading indicator while the video is loading
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose(); // Dispose the controller when the widget is disposed
  }
}
