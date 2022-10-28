import 'package:flutter/material.dart';
import 'package:week6_navigator/ideas_detail.dart';

import 'great_ideas.dart';

void main() {
  runApp(NavApp());
}

class NavApp extends StatelessWidget {
  const NavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => GreatIdeas(),
        '/ideas-detail': (context) => IdeasDetail(),
      },
    );
  }
}
