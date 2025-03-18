import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/screen/pdf_viewer.dart';


List<Map<String, String>> data = [
  {
    "file_path": "pdf1",
    "name":
        "1. top marraga ",
    "image_path": "assets/images/777777.jpg"
  },
  {
    "file_path": "pdf2",
    "name":
        "2. Oyin maydoni",
    "image_path": "assets/images/777777.jpg"
  },
  {
    "file_path": "pdf3",
    "name":
        "3. Top",
    "image_path": "assets/images/777777.jpg"
  },
  {
    "file_path": "pdf4",
    "name":
        "4. Oyinchilar forma",
    "image_path": "assets/images/777777.jpg"
  },
  {
    "file_path": "pdf5",
    "name":
        "5. Oyin vaqti",
    "image_path": "assets/images/777777.jpg"
  },
  {
    "file_path": "pdf6",
    "name":
        "6. Maydonda xarakatlanish qoidalari",
    "image_path": "assets/images/777777.jpg"
  },
  {
    "file_path": "pdf7",
    "name":
        "7. Oyinchilarni almashtirish",
    "image_path": "assets/images/777777.jpg"
  },
  {
    "file_path": "pdf8",
    "name":
        "8. Soportchiga xos bolmagan xarakatlar",
    "image_path": "assets/images/777777.jpg"
  },
  {
    "file_path": "pdf9",
    "name":
        "9. Jazolash kartochka",
    "image_path": "assets/images/777777.jpg"
  },
  {
    "file_path": "pdf10",
    "name":
        "10. Xakamlik",
    "image_path": "assets/images/777777.jpg"
  }
];

class GameRules extends StatelessWidget {
  static String rountName = "/game-rules";
  const GameRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backGroungColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: accentColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Nazariy Ma\'lumotlar',
          style: TextStyle(color: accentColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: backGroungColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bo'limlar",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: accentColor,
                        fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index)=>InfoCard(imageUrl: data[index]["image_path"]!, title: data[index]["name"]!, description: 'Batafsil...', onPressed: ()=>{
                  Navigator.of(context).pushNamed(PDFViewerScreen.route, arguments: data[index]["file_path"]!)
                }),
                padding: const EdgeInsets.all(8.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final VoidCallback onPressed;

  const InfoCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imageUrl,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: accentColor),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white54,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.7),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(8),
                    ),
                    child: const Icon(Icons.arrow_forward, color: accentColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
