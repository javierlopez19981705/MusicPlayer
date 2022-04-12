import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music/src/pages/home_page.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    this.getSongs();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }

  getSongs() async {
    final resp2 = await Permission.storage.request();
    print('permisos $resp2');

    final OnAudioQuery _audioQuery = OnAudioQuery();
    final resp = await _audioQuery.querySongs();
    print('Total de cancionez' + resp.toString());
  }
}
