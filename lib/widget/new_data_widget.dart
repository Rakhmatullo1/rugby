import 'package:flutter/material.dart';
import 'package:top/helper/db_helper.dart';
import 'package:top/main.dart';

class NewDataWidget extends StatefulWidget {
  const NewDataWidget({super.key});

  @override
  State<NewDataWidget> createState() => _NewDataWidgetState();
}

class _NewDataWidgetState extends State<NewDataWidget> {
  final DatabaseHelper dbHelper = DatabaseHelper();

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _phonoNumberController = TextEditingController();

  final TextEditingController _workPlaceController = TextEditingController();
  final TextEditingController _studyPlaceController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  final TextEditingController _ageController = TextEditingController();
  final RegExp regExp = RegExp("\\d+");

  @override
  void dispose() {
    _phonoNumberController.dispose();
    _workPlaceController.dispose();
    _ageController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _studyPlaceController.dispose();
    super.dispose();
  }

  void _submitForm(String id) async {
    if (_formKey.currentState!.validate()) {
      String firstName = _firstNameController.text;
      String lastName = _lastNameController.text;
      String age = _ageController.text;
      String workPlace = _workPlaceController.text;
      String phoneNumber = _phonoNumberController.text;
      String studyPlace = _studyPlaceController.text;

      await dbHelper
          .insertUserDetails(
              id, firstName, lastName, age, studyPlace, workPlace, phoneNumber)
          .then((_) async {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Credentials saved successfully!'),
            backgroundColor: Colors.green[200],
          ),
        );
      }).then((_) {
        Navigator.of(context).pop();
      });
    }
  }

  String? selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: dbHelper.getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(
              color: accentColor,
            );
          }

          if (!snapshot.hasData) {
            return const CircularProgressIndicator(
              color: accentColor,
            );
          }

          Map<String, dynamic> data = snapshot.data!;
          int id = data["id"];

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            color: backGroungColor,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      text("Ism"),
                      Expanded(
                        child: TextFormField(
                            controller: _firstNameController,
                            decoration: getDecoration("Ismni kiriting"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Ismni kiriting";
                              }
                              return null;
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      text("Familiya"),
                      Expanded(
                        child: TextFormField(
                            controller: _lastNameController,
                            decoration: getDecoration("Familiyani kiriting"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Familiyani kiriting";
                              }
                              return null;
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      text("Yosh"),
                      Expanded(
                        child: TextFormField(
                            controller: _ageController,
                            keyboardType: TextInputType.number,
                            decoration: getDecoration("Yoshni kiriting"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Yoshni kiriting";
                              }
                              if (!regExp.hasMatch(value)) {
                                return "Yoshni kiriting";
                              }
                              return null;
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      text("Telefon raqam"),
                      Expanded(
                        child: TextFormField(
                            controller: _phonoNumberController,
                            decoration:
                                getDecoration("Telefon raqamni kiriting"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Telefon raqamni kiriting";
                              }
                              if (!RegExp("\\+998\\d{9}").hasMatch(value)) {
                                return "Telefon raqamni kiriting";
                              }
                              return null;
                            }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      text("Ish Joyi"),
                      Expanded(
                        child: TextFormField(
                            controller: _workPlaceController,
                            decoration: getDecoration("Ish Joyini kiriting"),
                            validator: (value) =>
                                getValidator("Ish Joyini kiriting", value)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      text("O'qish Joyi"),
                      Expanded(
                        child: TextFormField(
                            controller: _studyPlaceController,
                            decoration: getDecoration("O'qish Joyini kiriting"),
                            validator: (value) =>
                                getValidator("O'qish Joyini kiriting", value)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: ListTile(
                      title: Text("Erkak",
                          style: const TextStyle(
                              fontSize: 24,
                              color: accentColor,
                              fontWeight: FontWeight.w500)),
                      trailing: Radio<String>(
                        value: "Male",
                        focusColor: accentColor,
                        activeColor: accentColor,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    child: ListTile(
                      title: Text("Ayol",
                          style: const TextStyle(
                              fontSize: 24,
                              color: accentColor,
                              fontWeight: FontWeight.w500)),
                      trailing: Radio<String>(
                        value: "Female",
                        focusColor: accentColor,
                        activeColor: accentColor,
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () => _submitForm("$id"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: accentColor),
                      child: const Text(
                        'Yakunlash',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget text(String name) {
    return Expanded(
        child: Text(
      name,
      style: const TextStyle(
          fontSize: 24, color: accentColor, fontWeight: FontWeight.w500),
    ));
  }

  InputDecoration getDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: accentColor),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: accentColor)),
      focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: accentColor)),
    );
  }

  String? getValidator(String hint, String? value) {
    if (value == null || value.isEmpty) {
      return hint;
    }
    return null;
  }
}
