import 'package:flutter/material.dart';
import 'package:top/helper/db_helper.dart';
import 'package:top/main.dart';
import 'package:top/screen/home_screen.dart';

class FilledDataWidget extends StatelessWidget {
  final Map<String, dynamic>? data;
  final DatabaseHelper dbHelper = DatabaseHelper();
  FilledDataWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 8,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/images/profile.webp'), // Replace with your image asset
                  ),
                  Container(
                    height: 60,
                    margin: const EdgeInsets.all(30),
                    alignment: const Alignment(0, 0),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      data == null
                          ? "Guest"
                          : '${data!["first_name"]!} ${data!["last_name"]!} ',
                      style:
                          const TextStyle(color: secondaryColor, fontSize: 18),
                      softWrap: true,
                    ),
                  ),
                  InfoCardWidget(
                    value: "Yosh",
                    keyOfValue: "${data!["age"]}",
                  ),
                  InfoCardWidget2(
                    value: "Telefon Raqam",
                    keyOfValue: "${data!["phone_number"]}",
                  ),
                  InfoCardWidget2(
                    value: "Ish Joyi",
                    keyOfValue: "${data!["work_place"]}",
                  ),
                  InfoCardWidget2(
                    value: "O'qish Joyi",
                    keyOfValue: "${data!["study_place"]}",
                  ),
                  InfoCardWidget(
                      value: "Jinsi",
                      keyOfValue:
                          data!["work_place"] == 'Female' ? 'Ayol' : 'Erkak')
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: accentColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10)),
                  onPressed: () async {
                    await dbHelper.deleteAll();
                    await dbHelper.insertUser(
                        data!["first_name"], data!["last_name"]);
                    Navigator.of(context).pushNamed(HomeScreen.route);
                  },
                  child: const Text(
                    "Tozalash",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ))
      ],
    );
  }
}

class InfoCardWidget2 extends StatelessWidget {
  final String value;
  final String keyOfValue;

  const InfoCardWidget2(
      {super.key, required this.value, required this.keyOfValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(value, secondaryColor.withOpacity(0.7)),
            SizedBox(
              height: 10,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: text(keyOfValue, accentColor)),
          ],
        ),
        const Divider(
          color: secondaryColor,
        )
      ],
    );
  }
}

class InfoCardWidget extends StatelessWidget {
  final String value;
  final String keyOfValue;

  const InfoCardWidget(
      {super.key, required this.value, required this.keyOfValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text(value, secondaryColor.withOpacity(0.7)),
            Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: text(keyOfValue, accentColor)),
          ],
        ),
        const Divider(
          color: secondaryColor,
        )
      ],
    );
  }
}

Widget text(String name, Color color) {
  return Text(
    name,
    style: TextStyle(
      fontSize: 24,
      color: color,
      fontWeight: FontWeight.w500,
    ),
  );
}
