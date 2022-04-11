// import 'package:audio_manager/audio_manager.dart';
import 'package:flutter/material.dart';
import 'package:music/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }

  // void setupAudio() {
  // AudioManager.instance.onEvents((events, args) {
  //   switch (events) {
  //     case AudioManagerEvents.start:
  //       _slider = 0;
  //       break;
  //     case AudioManagerEvents.seekComplete:
  //       _slider = audioManagerInstance.position.inMilliseconds /
  //           audioManagerInstance.duration.inMilliseconds;
  //       setState(() {});
  //       break;
  //     case AudioManagerEvents.playstatus:
  //       isPlaying = audioManagerInstance.isPlaying;
  //       setState(() {});
  //       break;
  //     case AudioManagerEvents.timeupdate:
  //       _slider = audioManagerInstance.position.inMilliseconds /
  //           audioManagerInstance.duration.inMilliseconds;
  //       audioManagerInstance.updateLrc(args["position"].toString());
  //       setState(() {});
  //       break;
  //     case AudioManagerEvents.ended:
  //       audioManagerInstance.next();
  //       setState(() {});
  //       break;
  //     default:
  //       break;
  //   }
  // });
  // }
}
