import 'package:flutter/material.dart';
import 'package:text_to_speech_app/home_screen.dart';
import 'package:text_to_speech_app/text_to_speech.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  TextToSpeech.initTTS();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: 'Speech To Text',
    );
  }
}
