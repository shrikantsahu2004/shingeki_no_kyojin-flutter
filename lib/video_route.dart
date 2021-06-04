import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';
import 'video_page.dart';
import 'url_aot.dart';

UrlAot urls = UrlAot();

class VideoRoute extends StatefulWidget {
  int? index;
  String? videoUrl;
  VideoRoute({@required this.index});

  @override
  _VideoRouteState createState() => _VideoRouteState();
}

class _VideoRouteState extends State<VideoRoute> {
  String generateVideoUrl() {
    if (widget.index! <= 9) {
      return "https://mountainoservo0002.animecdn.com/Shingeki-no-Kyojin-The-Final-Season/Shingeki-no-Kyojin-The-Final-Season-Episode-0${widget.index}-1080p.mp4";
    } else {
      return "https://mountainoservo0002.animecdn.com/Shingeki-no-Kyojin-The-Final-Season/Shingeki-no-Kyojin-The-Final-Season-Episode-${widget.index}-1080p.mp4";
    }
  }

  Container container(int num) {
    if (num == widget.index) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.purple.shade900,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: TextButton(
          child: Text(
            num.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return VideoRoute(index: num);
              }),
            );
          },
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: TextButton(
          child: Text(
            num.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return VideoRoute(index: num);
              }),
            );
          },
        ),
      );
    }
  }

  Expanded createButton(videoNumber) => Expanded(
        child: container(videoNumber),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shingeki No Kyojin: The Final",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              urls.imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.purple.shade900,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Episodes:",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  createButton(1),
                  createButton(2),
                  createButton(3),
                  createButton(4),
                  createButton(5),
                  createButton(6),
                  createButton(7),
                  createButton(8),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  createButton(9),
                  createButton(10),
                  createButton(11),
                  createButton(12),
                  createButton(13),
                  createButton(14),
                  createButton(15),
                  createButton(16),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: ChewieListItem(
                videoPlayerController:
                    VideoPlayerController.network(generateVideoUrl()),
                looping: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
