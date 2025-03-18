import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/screen/images_screen.dart';
import 'package:top/screen/videos_screen.dart';

class MemoriesScreen extends StatefulWidget {
  static String route = "/memories";

  const MemoriesScreen({super.key});

  @override
  State<MemoriesScreen> createState() => _MemoriesScreenState();
}

class _MemoriesScreenState extends State<MemoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: accentColor),
        title: Text("Videolar",
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
                  child: Image.asset("assets/images/memories.png")),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(VideosScreen.route),
              child: Container(
                width: 300,
                alignment: Alignment(0, 0),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: accentColor),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: const Text(
                  "Video lavhalar",
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
              onTap: () => Navigator.of(context).pushNamed(ImagesScreen.route),
              child: Container(
                alignment: Alignment(0, 0),
                width: 300,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: accentColor),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: const Text(
                  "Rasmlar",
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
