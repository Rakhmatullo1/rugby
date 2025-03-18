import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/screen/nizom_screen.dart';
import 'package:top/screen/pdf_viewer.dart';

class CompetitionsMenuScreen extends StatefulWidget {
  static String route = "/competitions-menu";

  const CompetitionsMenuScreen({super.key});

  @override
  State<CompetitionsMenuScreen> createState() => _CompetitionsMenuScreenState();
}

class _CompetitionsMenuScreenState extends State<CompetitionsMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: accentColor),
        title: Text("Musobaqalar",
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
                  child: Image.asset("assets/images/competitions.png")),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed(
                NizomScreen.route,
              ),
              child: Container(
                width: 350,
                alignment: Alignment(0, 0),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: accentColor),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: const Text(
                  "Musobaqa Nizomi",
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
              onTap: () => Navigator.of(context)
                  .pushNamed(PDFViewerScreen.route, arguments: 'competetion'),
              child: Container(
                alignment: Alignment(0, 0),
                width: 350,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: accentColor),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: const Text(
                  "Musobaqa o'tkazish tizimlari",
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
