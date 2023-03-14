import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Center(
                    child: TextButton(
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          AssetSource('note1.wav'),
                        );
                      },
                      style: TextButton.styleFrom(
                        // foregroundColor: Colors.black,
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      child: const Text(
                        'Sa!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Center(
                    child: TextButton(
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          AssetSource('note2.wav'),
                        );
                      },
                      style: TextButton.styleFrom(
                        // foregroundColor: Colors.black,
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      child: const Text(
                        'Re!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Center(
                    child: TextButton(
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          AssetSource('note3.wav'),
                        );
                      },
                      style: TextButton.styleFrom(
                        // foregroundColor: Colors.black,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      child: const Text(
                        'Ga!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Center(
                    child: TextButton(
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          AssetSource('note4.wav'),
                        );
                      },
                      style: TextButton.styleFrom(
                        // foregroundColor: Colors.black,
                        backgroundColor: Colors.purpleAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      child: const Text(
                        'Ma!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Center(
                    child: TextButton(
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          AssetSource('note5.wav'),
                        );
                      },
                      style: TextButton.styleFrom(
                        // foregroundColor: Colors.black,
                        backgroundColor: Colors.tealAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      child: const Text(
                        'Pa!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Center(
                    child: TextButton(
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          AssetSource('note6.wav'),
                        );
                      },
                      style: TextButton.styleFrom(
                        // foregroundColor: Colors.black,
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      child: const Text(
                        'Dha!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Center(
                    child: TextButton(
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          AssetSource('note7.wav'),
                        );
                      },
                      style: TextButton.styleFrom(
                        // foregroundColor: Colors.black,
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      child: const Text(
                        'Ni!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
