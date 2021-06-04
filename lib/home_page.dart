import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'url_aot.dart';
import 'video_route.dart';

UrlAot urls = UrlAot();

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
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
                  "Synopsis:",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    urls.synText[0],
                    SizedBox(height: 20.0),
                    urls.synText[1],
                    SizedBox(height: 20.0),
                    urls.synText[2],
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple.shade900,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextButton(
                  child: Text(
                    "Watch",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return VideoRoute(index: 1);
                      }),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
