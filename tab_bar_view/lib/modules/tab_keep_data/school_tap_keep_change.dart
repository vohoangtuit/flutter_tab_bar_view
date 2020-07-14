import 'package:flutter/material.dart';

import '../detail_page.dart';

class SchoolKeepChange extends StatefulWidget {
  @override
  _SchoolKeepChangeState createState() => _SchoolKeepChangeState();
}

class _SchoolKeepChangeState extends State<SchoolKeepChange> with AutomaticKeepAliveClientMixin<SchoolKeepChange>{
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

  @override
  bool get wantKeepAlive => true;
}
