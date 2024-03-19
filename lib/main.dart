import 'package:draw_your_image/draw_your_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const GarzaAI());
}

class GarzaAI extends StatelessWidget {
  const GarzaAI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final DrawController _drawController = DrawController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 400.0,
              height: 400.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              child: Draw(
                controller: _drawController,
                backgroundColor: Colors.white,
                strokeColor: Colors.black,
                strokeWidth: 10,
                onConvertImage: (imgData) {
                  // print("IMG: $imgData");
                  print("Hej");
                },
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FilledButton(
                  onPressed: () {
                    _drawController.clear();
                  },
                  child: Text("Clear"),
                ),
                SizedBox(
                  width: 8.0,
                ),
                FilledButton(
                  onPressed: () {
                    _drawController.convertToImage();
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
