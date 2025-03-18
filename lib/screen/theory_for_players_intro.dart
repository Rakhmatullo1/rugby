import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/screen/game_rules.dart';
import 'package:top/screen/glossary.dart';
import 'package:top/screen/meaning_of_game.dart';

class Theory4PlayersIntroScreen extends StatefulWidget {
  static String route = "/theory-4-players-intro";

  const Theory4PlayersIntroScreen({super.key});

  @override
  State<Theory4PlayersIntroScreen> createState() =>
      _Theory4PlayersIntroScreenState();
}

class _Theory4PlayersIntroScreenState extends State<Theory4PlayersIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: accentColor),
        title: Text("O'yinchilar uchun",
            style: const TextStyle(
                color: accentColor, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: backGroungColor,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                  borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(50),
                      bottomEnd: Radius.circular(50)),
                  child: Image.asset("assets/images/training.png")),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(MeaningOfGameScreen.route, arguments: {
                    'title': 'O\'yinning qisqacha tarifi',
                    'key': 'meaning'
                  }),
              child: Container(
                width: 300,
                alignment: Alignment(0, 0),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: accentColor),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: const Text(
                  "O'yinning qisqacha ta'rifi",
                  style: TextStyle(
                      color: accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(GameRules.rountName),
              child: Container(
                alignment: Alignment(0, 0),
                width: 300,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: accentColor),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: const Text(
                  "O'yin qoidalari",
                  style: TextStyle(
                      color: accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(RugbyGlossaryPage.route),
              child: Container(
                width: 300,
                alignment: Alignment(0, 0),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: accentColor),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: const Text(
                  "Glossariy",
                  style: TextStyle(
                      color: accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
