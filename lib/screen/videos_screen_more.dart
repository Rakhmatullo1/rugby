import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/widget/filled_data_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideosScreenMore extends StatefulWidget {
  static String route = "/video-more";
  const VideosScreenMore({super.key});

  @override
  State<VideosScreenMore> createState() => _VideosScreenMoreState();
}

class _VideosScreenMoreState extends State<VideosScreenMore> {
  List<dynamic> videos = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    videos = ModalRoute.of(context)!.settings.arguments as List;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      appBar: AppBar(
        title: text('Video Lavhalar', accentColor),
        backgroundColor: backGroungColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: videos.isEmpty
                ? Center(child: Text("No Images Selected"))
                : ListView.builder(
                    itemCount: videos.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              VideoPlayerScreen.route,
                              arguments: "${videos[index]["video_url"]}");
                        },
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(3),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network("${videos[index]["thumb"]}",
                                width: 150, loadingBuilder:
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

class VideoPlayerScreen extends StatefulWidget {
  static String route = "/video-player";
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late WebViewController _controller;
  String name = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    String url = ModalRoute.of(context)!.settings.arguments as String;
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroungColor,
        body: WebViewWidget(controller: _controller));
  }
}
