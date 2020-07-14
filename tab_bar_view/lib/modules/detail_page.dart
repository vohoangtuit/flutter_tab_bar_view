
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  String title;
  DetailScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(title.isEmpty?'Detail': title),
          ],
        ),
      ),
    );
  }
}
