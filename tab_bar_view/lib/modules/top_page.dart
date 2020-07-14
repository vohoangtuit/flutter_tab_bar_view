import 'package:flutter/material.dart';
import 'package:tab_bar_view/modules/tabs/business_tap.dart';
import 'package:tab_bar_view/modules/tabs/home_tap.dart';
import 'package:tab_bar_view/modules/tabs/profile_tab.dart';
import 'package:tab_bar_view/modules/tabs/school_tap.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TabBar Demo',
      home: new Scaffold(
        body: DefaultTabController(
            length: listTab().length,
            child: Scaffold(
              appBar:  PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: Container(
                  color: Colors.lightBlue,
                  child: new SafeArea(
                    child: Column(
                      children: <Widget>[
                        new Expanded(child: new Container()),
                        new TabBar(
                          tabs: listTab(),
                          indicatorColor: Colors.redAccent,
                          indicatorWeight: 3,
                          //indicatorSize: TabBarIndicatorSize.label,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              body: new TabBarView(
                physics: NeverScrollableScrollPhysics(),// todo: disable swip
                children: <Widget>[HomeTap(), Business(), School(),Profile()],
              ),
            )
        ),
      ),
    );
  }
  List<Tab> listTab(){
    return <Tab>[
      // todo: custom view tabs
      Tab(child: Column(children: [
        SizedBox(height: 3,),
        Icon(Icons.home),
        Text("Home"),
      ],)),
      Tab(child: Column(children: [
        SizedBox(height: 3,),
        Icon(Icons.business),
        Text("Business"),
      ],)),
      Tab(child: Column(children: [
        SizedBox(height: 3,),
        Icon(Icons.school),
        Text("School"),
      ],)),
      Tab(
          child: Stack(
            children: [
              Column(

                children: [
                  SizedBox(height: 3,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.person),
                        // Text("0", maxLines: 2,)
                      ]
                  ),
                  // Icon(Icons.person),
                  Text("Profile"),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2.8),
                      margin: const EdgeInsets.only(right: 11),
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,// You can use like this way or like the below line
                        //borderRadius: new BorderRadius.circular(30.0),
                        color: Colors.red,

                      ),
                      child: Text('9', maxLines: 2, style: TextStyle(color: Colors.white, )),
                    )

                  ]
              ),

            ],
          )
      ),

      // todo: default
      //  Tab(icon: Icon(Icons.home),text: 'Home',),
//                Tab(icon: Icon(Icons.business),text: 'Business', ),
//                Tab( icon: Icon(Icons.school),text: 'School',),
//                Tab(icon: Icon(Icons.person),text: 'Profile',),
    ];
  }

}

