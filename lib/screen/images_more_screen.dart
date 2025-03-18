import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/widget/filled_data_widget.dart';

class PhotosApp extends StatefulWidget {
  static String route = "/images-more";
  const PhotosApp({super.key});

  @override
  State<PhotosApp> createState() => _PhotosAppState();
}

class _PhotosAppState extends State<PhotosApp> {
  List<dynamic> images = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Map<String, dynamic> data =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    images = data["images"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      appBar: AppBar(
        title: text('Rasmlar', accentColor),
        backgroundColor: backGroungColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: images.isEmpty
                ? Center(child: Text("No Images Selected"))
                : GridView.builder(
                    padding: EdgeInsets.all(8),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                    ),
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FullscreenImage(imageUrl: "https://gnfuncjcsczaqlftphym.supabase.co/storage/v1/object/public/rugby//${images[index]}"),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(3),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                "https://gnfuncjcsczaqlftphym.supabase.co/storage/v1/object/public/rugby//${images[index]}",
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }

                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          (loadingProgress.expectedTotalBytes ??
                                              1)
                                      : null,
                                ),
                              );
                            }, fit: BoxFit.cover),
                          ),
                        ),
                      );
                    },
                  ),
          )
        ],
      ),
    );
  }
}

class FullscreenImage extends StatelessWidget {
  final String imageUrl;

  const FullscreenImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: "fullscreenImage",
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain, // Ensures full image is visible
            ),
          ),
        ),
      ),
    );
  }
}
