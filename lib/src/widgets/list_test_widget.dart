import 'package:flutter/material.dart';
import 'package:music/src/widgets/song_widget.dart';
import 'package:on_audio_query/on_audio_query.dart';

class ListTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: OnAudioQuery()
          .querySongs(sortType: SongSortType.TITLE, uriType: UriType.EXTERNAL),
      builder: (context, AsyncSnapshot<List<SongModel>> snapshot) {
        print(snapshot.data.toString());
        List<SongModel> songInfo = snapshot.data ?? [];
        if (snapshot.hasData) return SongWidget(songList: songInfo);
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Loading....",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
