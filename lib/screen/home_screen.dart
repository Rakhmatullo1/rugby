import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/screen/competition_screen.dart';
import 'package:top/screen/memories.dart';
import 'package:top/screen/theory_page.dart';
import 'package:top/screen/user_info.dart';

class HomeScreen extends StatefulWidget {
  static String route = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'To\'p Marraga',
              style: TextStyle(
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            backgroundColor: backGroungColor,
            elevation: 0,
          ),
          body: Container(
            color: backGroungColor,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(UserInfoForm.route),
                          child: const MenuCard(
                            title: 'Mening ma\'lumotlarim',
                            imageName: "assets/images/rugby-ball.png",
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(InfoCardScreen.rountName),
                          child: const MenuCard(
                            title: 'Nazariy ma\'lumotlar',
                            imageName: "assets/images/theory.png",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(CompetitionsMenuScreen.route),
                          child: const MenuCard(
                            title: 'Musobaqalar',
                            imageName: "assets/images/competetions.png",
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(MemoriesScreen.route),
                          child: const MenuCard(
                            title: 'Videolar',
                            imageName: "assets/images/videos.png",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
               
              ],
            ),
          )),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final String imageName;

  const MenuCard({super.key, required this.title, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageName), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 40,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
