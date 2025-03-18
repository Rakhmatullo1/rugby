import 'package:flutter/material.dart';
import 'package:top/helper/db_helper.dart';
import 'package:top/main.dart';
import 'package:top/widget/filled_data_widget.dart';
import 'package:top/widget/new_data_widget.dart';

class UserInfoForm extends StatefulWidget {
  static String route = "/user-info";
  const UserInfoForm({super.key});

  @override
  State<UserInfoForm> createState() => _UserInfoFormState();
}

class _UserInfoFormState extends State<UserInfoForm> {
  final DatabaseHelper dbHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            'Shaxsiy \nma\'lumotlari',
            style: TextStyle(color: accentColor, fontWeight: FontWeight.w500),
          ),
        ),
        iconTheme: const IconThemeData(color: accentColor),
        backgroundColor: backGroungColor,
      ),
      backgroundColor: backGroungColor,
      body: FutureBuilder(
          future: dbHelper.getUserDetails(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(
                color: accentColor,
              );
            }
            if (!snapshot.hasData || snapshot.data!["age"] == null) {
              return const NewDataWidget();
            }
            return FilledDataWidget(data: snapshot.data!);
          }),
    );
  }
}
