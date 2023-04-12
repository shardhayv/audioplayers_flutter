import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playNote(int noteNum) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$noteNum.wav'),
    );
  }

  Expanded allButton({required Color color, required int soundNum, required String note}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playNote(soundNum);
        },
        style: TextButton.styleFrom(
          // foregroundColor: Colors.black,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0)),
        ),
        child: Text(
          '${note}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              allButton(color : Colors.red, soundNum: 1 , note: 'Sa!'),
              allButton(color : Colors.yellow, soundNum: 2, note: 'Re!'),
              allButton(color : Colors.green, soundNum: 3, note: 'Ga!'),
              allButton(color : Colors.purpleAccent, soundNum: 4, note: 'Ma!'),
              allButton(color : Colors.indigoAccent, soundNum: 5, note: 'Pa!'),
              allButton(color : Colors.brown, soundNum: 6, note: 'Dha!'),
              allButton(color : Colors.black, soundNum: 7, note: 'Ni!'),
            ],
          ),
        ),
      ),
    );
  }
}
