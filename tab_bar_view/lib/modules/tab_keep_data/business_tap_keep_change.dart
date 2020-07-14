import 'package:flutter/material.dart';

import '../detail_page.dart';

class BusinessKeepChange extends StatefulWidget {
  @override
  _BusinessKeepChangeState createState() => _BusinessKeepChangeState();
}

class _BusinessKeepChangeState extends State<BusinessKeepChange> with AutomaticKeepAliveClientMixin<BusinessKeepChange> {
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
              title: Text("Business $index", style: TextStyle(color: Colors.blue, fontSize: 17)),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DetailScreen("Business $index")));
              },
            );
          },
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
