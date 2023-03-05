import 'package:flutter/material.dart';
import 'package:talkbox_v1/screens/animals_page.dart';
import 'package:talkbox_v1/screens/home_page.dart';
import 'package:talkbox_v1/screens/objects_page.dart';
import 'package:talkbox_v1/screens/persons_page.dart';
import 'package:talkbox_v1/screens/places_page.dart';
import 'package:talkbox_v1/screens/positions_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        // '/': (context) => const HomePage(),
        '/personas': (context) => const PersonsPage(),
        '/animales': (context) => const AnimalsPage(),
        '/objetos': (context) => const ObjectsPage(),
        '/lugares': (context) => const PlacesPage(),
        '/posicinoes': (context) => const PositionsPage(),
      },
    );
  }
}
