import 'package:flutter/material.dart';

import '../M-12/cls-1.dart';
import '../m-13/DragDrop.dart';
import '../m-13/m-13cls-2.dart';
import '../m-13/m-13cls-3.dart';
class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;

List<Widget> _screen = [
  Mudle12(),
 Mocls2(),
 Mod13cls3(),
 Dragdrop(),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
         onDestinationSelected: (int index)
          {
            _selectedIndex = index;
            setState(() {

            });
          },

         destinations:[
            NavigationDestination(icon: Icon(Icons.home),
                label: 'Home'),
            NavigationDestination(icon: Icon(Icons.message),
                label: 'Inbox'),
            NavigationDestination(icon: Icon(Icons.search),
                label: 'Search'),
            NavigationDestination(icon: Icon(Icons.person),
                label: 'profile'),
          ]
      ),
    );
  }
}
