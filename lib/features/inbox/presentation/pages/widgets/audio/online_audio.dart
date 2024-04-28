// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// class AudioApp extends StatefulWidget {
//   @override
//   _AudioAppState createState() => _AudioAppState();
// }

// class _AudioAppState extends State<AudioApp> {
//   AudioPlayer audioPlayer = AudioPlayer();
//   String audioUrl =
//       'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'; // Example audio URL

//   @override
//   void initState() {
//     super.initState();
//     // Set up listeners for the audio player
//     audioPlayer.onPlayerCompletion.listen((event) {
//       setState(() {
//         // Handle audio completion
//       });
//     });
//     audioPlayer.onPlayerError.listen((msg) {
//       setState(() {
//         // Handle errors
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         IconButton(
//           icon: Icon(Icons.play_arrow),
//           iconSize: 64.0,
//           onPressed: () {
//             // Play audio from URL
//             audioPlayer.play(audioUrl);
//           },
//         ),
//         SizedBox(height: 20.0),
//         IconButton(
//           icon: Icon(Icons.pause),
//           iconSize: 64.0,
//           onPressed: () {
//             // Pause audio
//             audioPlayer.pause();
//           },
//         ),
//         SizedBox(height: 20.0),
//         IconButton(
//           icon: Icon(Icons.stop),
//           iconSize: 64.0,
//           onPressed: () {
//             // Stop audio
//             audioPlayer.stop();
//           },
//         ),
//       ],
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     // Dispose the audio player to release resources
//     audioPlayer.dispose();
//   }
// }
