import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:tuneapp/models/tunes_model.dart';

class TunesView extends StatefulWidget {
  const TunesView({super.key});

  @override
  State<TunesView> createState() => _TunesViewState();
}

class _TunesViewState extends State<TunesView> {
  List<TunesModel> tuneList = [
    TunesModel(
        color: const Color(0xffE33136), sound: 'assets/audios/note1.wav'),
    TunesModel(
        color: const Color(0xffED9708), sound: 'assets/audios/note2.wav'),
    TunesModel(
        color: const Color(0xffF7F442), sound: 'assets/audios/note3.wav'),
    TunesModel(
        color: const Color(0xff52BF51), sound: 'assets/audios/note4.wav'),
    TunesModel(
        color: const Color(0xff36A088), sound: 'assets/audios/note5.wav'),
    TunesModel(
        color: const Color(0xff339CED), sound: 'assets/audios/note6.wav'),
    TunesModel(
        color: const Color(0xff9213AB), sound: 'assets/audios/note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253239),
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 50,
        title: const Text(
          'Tunes',
          style: TextStyle(
            fontSize: 25,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Column(
        children: tuneList
            .map(
              (e) => ContainerOfTunesWidget(
                tunesModel: e,
              ),
            )
            .toList(),
      ),
    );
  }
}

class ContainerOfTunesWidget extends StatelessWidget {
  const ContainerOfTunesWidget({super.key, required this.tunesModel});
  final TunesModel tunesModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio(tunesModel.sound),
          );
        },
        child: Container(
          color: tunesModel.color,
        ),
      ),
    );
  }
}

 // SizedBox(
          //   height: 500,
          //   child: Expanded(
          //     child: ListView.builder(
          //       itemCount: tuneList.length,
          //       itemBuilder: (context, i) {
          //         return ContainerOfTunesWidget(
          //           tunesModel: tuneList[i],
          //         );
          //       },
          //     ),
          //   ),
          // )