import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/screen/theory_for_players_intro.dart';
import 'package:top/screen/theory_for_trainers.dart';
import 'package:top/widget/filled_data_widget.dart';


class InfoCardScreen extends StatelessWidget {
  static String rountName = "/theory";
  const InfoCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backGroungColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: accentColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Nazariy Ma\'lumotlar',
          style: TextStyle(color: accentColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: backGroungColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bo'limlar",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: accentColor,
                          fontFamily: 'Montserrat'),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: ()=>Navigator.of(context).pushNamed(Theory4PTrainersIntroScreen.route),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                "assets/images/trainer.png",
                                fit: BoxFit.contain,
                              )),
                        ),
                        text('Murabbiylar uchun', accentColor)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: InkWell(
                  onTap: ()=> {
                    Navigator.of(context).pushNamed(Theory4PlayersIntroScreen.route)
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                "assets/images/player.png",
                                fit: BoxFit.contain,
                              )),
                        ),
                        text('O\'yinchilar uchun', accentColor)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

