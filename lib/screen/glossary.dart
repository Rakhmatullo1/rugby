import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/widget/filled_data_widget.dart';

class RugbyGlossaryPage extends StatefulWidget {
  static String route = "/glossary";
  const RugbyGlossaryPage({super.key});

  @override
  State<RugbyGlossaryPage> createState() => _RugbyGlossaryPageState();
}

class _RugbyGlossaryPageState extends State<RugbyGlossaryPage> {
  Stream<QuerySnapshot> _getTrainingsStream() {
    return FirebaseFirestore.instance.collection('glossary').snapshots();
  }

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      appBar: AppBar(
        title: text("Rugby Glossary", accentColor),
        backgroundColor: backGroungColor,
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: _getTrainingsStream(),
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
            List<dynamic> words = jsonDecode(data['data']);
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Expanded(
                    child: words.isNotEmpty
                        ? ListView.builder(
                            itemCount: words.length,
                            itemBuilder: (context, index) {
                              return Card(
                                child: ListTile(
                                  title: Text(words[index]["word"]!,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text(
                                    words[index]["meaning"]!,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              );
                            },
                          )
                        : Center(child: Text("Glossariy topilmadi")),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
