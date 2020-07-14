import 'package:flutter/material.dart';

import '../detail_page.dart';

class School extends StatefulWidget {
  @override
  _SchoolState createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.green,
          ),
          itemCount: 30,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("School $index", style: TextStyle(color: Colors.blue, fontSize: 17)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DetailScreen("School $index")));
              },
            );
          },
        ),
      ),
    );
  }
}
