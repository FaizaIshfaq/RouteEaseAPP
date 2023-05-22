// import 'package:flutter/material.dart';
// import 'package:route_ease/MapPage.dart';
// import 'package:route_ease/Profile.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int _currentIndex = 0;
//
//   final List<Widget> _pages = [
//     HomePage(),
//     MapPage(),
//     Profile(),
//   ];
//
//   void _changePage(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: _changePage,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Page 1',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.map),
//             label: 'Page 2',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.light_mode),
//             label: 'Page 3',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//             label: 'Page 4',
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:route_ease/MapPage.dart';
import 'package:route_ease/Profile.dart';
import 'package:route_ease/theme.dart';
import 'package:route_ease/HomePageContent.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages=[
    MapSample(),
    MapPage(),
    ModeTheme(),
    Profile(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Color(0xFF252C3D),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            unselectedFontSize: 0,
            selectedFontSize: 0,
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.white,
            backgroundColor: const Color(0xFF252C3D),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(label:"",icon: Icon(Icons.home,size: 27,) ),
              BottomNavigationBarItem(label:"",icon: Icon(Icons.map,size: 27,)),
              BottomNavigationBarItem(label:"",icon: Icon(Icons.light_mode,size: 27,)),
              BottomNavigationBarItem(label:"",icon: Icon(Icons.people,size: 27,)),
            ],
          ),
        ),
      ),
    );
  }
}
