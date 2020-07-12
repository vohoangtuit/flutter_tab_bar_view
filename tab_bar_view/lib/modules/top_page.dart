import 'package:flutter/material.dart';
import 'package:tab_bar_view/modules/tabs/business_tap.dart';
import 'package:tab_bar_view/modules/tabs/home_tap.dart';
import 'package:tab_bar_view/modules/tabs/profile_tab.dart';
import 'package:tab_bar_view/modules/tabs/school_tap.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),//100
            child:  Container(
              color: Colors.blue,
              height: 50,
              child:  new TabBar(
                  labelColor: Colors.purple,
                  indicatorColor: Colors.purple,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    // todo: custom view tabs
                    Tab(child: Column( children: [SizedBox(height:3,), Icon(Icons.home), Text("Home"), ], )),
                    Tab(child: Column( children: [ SizedBox(height:3,),Icon(Icons.business), Text("Business"), ], )),
                    Tab(child: Column( children: [SizedBox(height:3,), Icon(Icons.school), Text("School"), ], )),
                    Tab(child: Column( children: [ SizedBox(height:3,),Icon(Icons.person), Text("Profile"), ], )),

                    // todo: default
//                Tab(icon: Icon(Icons.home),text: 'Home',),
//                Tab(icon: Icon(Icons.business),text: 'Business', ),
//                Tab( icon: Icon(Icons.school),text: 'School',),
//                Tab(icon: Icon(Icons.person),text: 'Profile',),
              ]
              ),
            ),

          ),
          body: TabBarView(
            children: <Widget>[HomeTap(), Business(), School(),Profile()],
          ),
        ),
      ),
    );
  }
}

