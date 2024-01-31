import 'package:flutter/material.dart';

import '../../main.dart';
import '../../Utils/customNavBarClipper.dart';
import '../view/Screens/home.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final heigth = mq.height;
    final width = mq.width;
    return Scaffold(
      extendBody: true,
      
      appBar: AppBar(
        title: const Text('Hi Alpha'),
        // backgroundColor: ,
        actions: <Widget>[
          Container(
            height: heigth * 0.1,
            width: width * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xfffce8fc),
            ),
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.symmetric(
                horizontal: width * 0.025, vertical: heigth * 0.005),
            child: Image.network(
              'https://randomuser.me/api/portraits/men/18.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: <Widget>[
        Home(),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.purple,
        ),
      ][currentIndex],
      bottomNavigationBar: ClipPath(
        clipper: CustomNavBarClipper(),
        child: Container(
          alignment: Alignment.bottomCenter,
          height: heigth * 0.15,
          width: width,
          color: const Color(0xfffce8fc),
          child: NavigationBar(
            backgroundColor: const Color(0xfffce8fc),
            elevation: 0.0,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            destinations: <Widget>[
              _navigationItem(
                icon: Icons.home_outlined,
              ),
              _navigationItem(
                icon: Icons.track_changes_rounded,
              ),
              _navigationItem(
                icon: Icons.bar_chart,
              ),
              _navigationItem(
                icon: Icons.person_outline,
              ),
            ],
            selectedIndex: 0,
            onDestinationSelected: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  NavigationDestination _navigationItem({required IconData icon}) {
    return NavigationDestination(
      icon: Icon(
        icon,
        color: Colors.black,
        size: 30.0,
      ),
      label: '',
    );
  }
}
