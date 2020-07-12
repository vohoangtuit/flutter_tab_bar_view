import 'package:flutter/material.dart';
import 'package:tab_bar_view/modules/tabs/business_tap.dart';
import 'package:tab_bar_view/modules/tabs/home_tap.dart';
import 'package:tab_bar_view/modules/tabs/profile_tab.dart';
import 'package:tab_bar_view/modules/tabs/school_tap.dart';

class BottomScreen extends StatefulWidget {
  @override
  _BottomScreenState createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Initialize the Tab Controller
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab View On Bottom'),
        centerTitle: false,
      ),
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[HomeTap(), Business(), School(), Profile()],
        // set the controller
        controller: controller,
      ),
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.blue,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
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
                           child: Text('5', maxLines: 2, style: TextStyle(color: Colors.white, )),
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
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}
