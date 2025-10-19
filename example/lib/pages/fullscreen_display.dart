import 'package:better_player_example/constants.dart';
import 'package:better_player_example/utils.dart';
import 'package:custom_better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';

class FullscreenDisplay extends StatefulWidget {
  const FullscreenDisplay({super.key});

  @override
  State<FullscreenDisplay> createState() => _FullscreenDisplayState();
}

class _FullscreenDisplayState extends State<FullscreenDisplay> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      children: [
        // AspectRatio(aspectRatio: 16 / 9, child: BetterPlayer.network(Constants.forBiggerBlazesUrl)),
        FutureBuilder<String>(
          future: Utils.getFileUrl(Constants.fileTestVideoUrl),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.data != null) {
              return Stack(
                children: [
                  BetterPlayer.network(
                    betterPlayerConfiguration: BetterPlayerConfiguration(
                      autoPlay: true,
                      controlsConfiguration: BetterPlayerControlsConfiguration(showControls: false),
                    ),
                    // snapshot.data!,
                    'https://d3sdhjzyeun8h8.cloudfront.net/videos/00aea3cc5ed24017a2339692925e3894.mp4',
                  ),
                  Positioned(
                    top: 100,
                    left: 20,

                    child: Text('for the test pur', style: TextStyle(color: Colors.white)),
                  ),
                ],
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    ),
  );
}
