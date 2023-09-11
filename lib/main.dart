import 'package:flutter/material.dart';
import 'package:ui_2/hero_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Marvel Cinematic Universe",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                const Text(
                  "Super Heros",
                  style: TextStyle(fontSize: 18, letterSpacing: 3),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(right: 32.0),
                          child: HeroCard(),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
