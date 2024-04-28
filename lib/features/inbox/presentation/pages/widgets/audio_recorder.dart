import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/features/inbox/presentation/state/inbox_cubit.dart';
import 'audio/player.dart';
import 'audio/recorder.dart';

class Recording extends StatefulWidget {
  const Recording({super.key});

  @override
  State<Recording> createState() => _RecordingState();
}

class _RecordingState extends State<Recording> {
  bool showPlayer = false;
  String? audioPath;

  @override
  void initState() {
    showPlayer = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: 200,
      child: Center(
        child: showPlayer
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: AudioPlayer(
                  source: audioPath!,
                  onDelete: () {
                    setState(() => showPlayer = false);
                  },
                ),
              )
            : Recorder(
                onStop: (path) {
                  context.read<InboxCubit>().setAudioPath(path: path);
                  if (kDebugMode) print('Recorded file path: $path');
                  setState(() {
                    audioPath = path;
                    showPlayer = true;
                  });
                },
              ),
      ),
    );
  }
}
