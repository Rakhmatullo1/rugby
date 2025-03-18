import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/screen/images_more_screen.dart';
import 'package:top/widget/filled_data_widget.dart';

class ImagesScreen extends StatefulWidget {
  static String route = "/images";
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      appBar: AppBar(
        backgroundColor: backGroungColor,
        title: text('Rasmlar', accentColor),
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
            List<dynamic> schools = jsonDecode(data["images"]);
            return Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                  itemCount: schools.length,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(PhotosApp.route,
                              arguments: {"images": schools[index]["images"]});
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
