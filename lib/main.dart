import 'package:flutter/material.dart';
import 'package:tuneapp/views/tunes_view.dart';

void main() {
  runApp(const TunesApp());
}

class TunesApp extends StatelessWidget {
  const TunesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TunesView(),
    );
  }
}
