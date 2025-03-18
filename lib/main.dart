import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:top/helper/db_helper.dart';
import 'package:top/screen/mark_down_reader.dart';
import 'package:top/screen/nizom_screen.dart';
import 'package:top/screen/videos_screen.dart';
import 'package:top/screen/competition_screen.dart';
import 'package:top/screen/game_rules.dart';
import 'package:top/screen/glossary.dart';
import 'package:top/screen/home_screen.dart';
import 'package:top/screen/images_more_screen.dart';
import 'package:top/screen/images_screen.dart';
import 'package:top/screen/login_screen.dart';
import 'package:top/screen/meaning_of_game.dart';
import 'package:top/screen/memories.dart';
import 'package:top/screen/pdf_viewer.dart';
import 'package:top/screen/theory_for_players_intro.dart';
import 'package:top/screen/theory_for_trainers.dart';
import 'package:top/screen/theory_page.dart';
import 'package:top/screen/user_info.dart';
import 'package:top/screen/videos_screen_more.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

const Color secondaryColor = Color.fromRGBO(53, 94, 59, 1);
const Color accentColor = Color.fromRGBO(53, 94, 59, 1);
const Color backGroungColor = Color.fromRGBO(181, 247, 181, 1);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.route: (_) => const HomeScreen(),
        InfoCardScreen.rountName: (_) => const InfoCardScreen(),
        PDFViewerScreen.route: (_) => const PDFScreen(),
        UserInfoForm.route: (_) => const UserInfoForm(),
        Theory4PlayersIntroScreen.route: (_) =>
            const Theory4PlayersIntroScreen(),
        MeaningOfGameScreen.route: (_) => const MeaningOfGameScreen(),
        GameRules.rountName: (_) => const GameRules(),
        RugbyGlossaryPage.route: (_) => const RugbyGlossaryPage(),
        Theory4PTrainersIntroScreen.route: (_) =>
            const Theory4PTrainersIntroScreen(),
        CompetitionsMenuScreen.route: (_) => const CompetitionsMenuScreen(),
        MemoriesScreen.route: (_) => const MemoriesScreen(),
        ImagesScreen.route: (_) => ImagesScreen(),
        PhotosApp.route: (_) => PhotosApp(),
        VideosScreen.route: (_) => VideosScreen(),
        VideosScreenMore.route: (_) => VideosScreenMore(),
        VideoPlayerScreen.route: (_) => VideoPlayerScreen(),
        MarkDownReader4Referee.route: (_) => MarkDownReader4Referee(),
        NizomScreen.route: (_) => NizomScreen()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: secondaryColor,
      ),
      home: FutureBuilder(
        future: _dbHelper.existsUser(),
        builder: (context, result) {
          if (result.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: accentColor,
              ),
            );
          }
          _dbHelper.getUserDetails();
          if (result.hasData) {
            bool? result1 = result.data;
            if (result1 == null || result1) {
              return const LoginPage();
            }
            return const HomeScreen();
          }
          return const LoginPage();
        },
      ),
    );
  }
}
