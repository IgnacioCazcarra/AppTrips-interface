import 'package:flutter/material.dart';
import 'package:flutteraaaaa/home_trips.dart';
import 'package:flutteraaaaa/profile_trips.dart';
import 'package:flutteraaaaa/search_trips.dart';

class AppTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppTrips();
  }

}

class _AppTrips extends State<AppTrips>{

  int indexTap = 0;

  final List<Widget> widgetChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTappedTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,

        ),
        child: BottomNavigationBar(
          onTap: onTappedTapped,
          currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("")
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("")
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              )
            ]
        ),
      ),
    );
  }

}