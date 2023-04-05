import 'package:flutter/material.dart';
import 'package:text_to_speech_app/text_to_speech.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Text To Speech'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              controller: textController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              TextToSpeech.speak(textController.text);
            },
            child: const Text('Speak'),
          ),
        ],
      ),
    );
  }
}
