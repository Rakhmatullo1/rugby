import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/screen/videos_screen_more.dart';
import 'package:top/widget/filled_data_widget.dart';

class VideosScreen extends StatefulWidget {
  static String route = "/videos";
  const VideosScreen({super.key});

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      appBar: AppBar(
        backgroundColor: backGroungColor,
        title: text('Video Lavhalar', accentColor),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('videos').snapshots(),
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
            List<dynamic> schools = jsonDecode(data["videos"]);
            return Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                  itemCount: schools.length,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          print(schools[index]["videos"]);
                          Navigator.of(context).pushNamed(
                              VideosScreenMore.route,
                              arguments: schools[index]["videos"]);
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: text(schools[index]["school"], accentColor),
                        ),
                      )),
            );
          }),
    );
  }
}
