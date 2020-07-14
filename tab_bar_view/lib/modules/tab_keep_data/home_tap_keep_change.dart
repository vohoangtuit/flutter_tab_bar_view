import 'package:flutter/material.dart';
import 'package:tab_bar_view/modules/detail_page.dart';

class HomeTapKeepChange extends StatefulWidget {
  @override
  _HomeTapKeepChangeState createState() => _HomeTapKeepChangeState();
}

class _HomeTapKeepChangeState extends State<HomeTapKeepChange> with AutomaticKeepAliveClientMixin<HomeTapKeepChange> {
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
              title: Text("Home $index", style: TextStyle(color: Colors.blue, fontSize: 17)),
              onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DetailScreen("Home $index")));
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
