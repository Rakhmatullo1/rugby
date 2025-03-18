import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:top/main.dart';

class MeaningOfGameScreen extends StatefulWidget {
  static String route = "/about";

  const MeaningOfGameScreen({super.key});
  @override
  State<MeaningOfGameScreen> createState() => _MeaningOfGameScreenState();
}

class _MeaningOfGameScreenState extends State<MeaningOfGameScreen> {
  String title = '';
  String key = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Map<String, dynamic> parameter =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    title = parameter['title'];
    key = parameter['key'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backGroungColor,
          iconTheme: const IconThemeData(color: accentColor),
          
          title: Text(
            title,
            style: TextStyle(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),
        backgroundColor: backGroungColor,
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('about').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: accentColor,
                ));
              }

              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }

              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return const Center(child: Text('No months found.'));
              }
              var data = snapshot.data!.docs[0].data() as Map<String, dynamic>;
              return Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                    child: Text(
                  '${data[key]}',
                  style: TextStyle(fontSize: 20),
                )),
              );
            }));
  }
}
