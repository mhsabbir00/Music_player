import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/audioplayers/audio_cache.dart';

class AudioFile extends StatefulWidget {
  final AudioPlayer advancedPlayer;
  final String audioPath;
  AudioFile({Key? key, required this.advancedPlayer, required this.audioPath})
      : super(key: key);

  @override
  _AudioFileState createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  AudioPlayer audioPlayer = AudioPlayer();

  playLocal() async {
    await audioPlayer.play("assets/${widget.audioPath}", isLocal: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: playLocal,
                icon: Icon(Icons.play_circle_fill),
              ),
              IconButton(
                onPressed: () async => await audioPlayer.pause(),
                icon: Icon(Icons.pause_circle_filled),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class AudioFile extends StatelessWidget {
//   final AudioPlayer advancedPlayer;
//   AudioFile({Key? key, required this.advancedPlayer}) : super(key: key);

//   AudioPlayer audioPlayer = AudioPlayer();
  

//   playLocal() async {
//     await audioPlayer.play("assets/param.mp3", isLocal: true);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 onPressed: playLocal,
//                 icon: Icon(Icons.play_circle_fill),
//               ),
//               IconButton(
//                 onPressed: () async => await audioPlayer.pause(),
//                 icon: Icon(Icons.pause_circle_filled),
//               ),
//               IconButton(
//                 onPressed: () async => await audioPlayer.resume(),
//                 icon: Icon(Icons.play_circle_filled),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


