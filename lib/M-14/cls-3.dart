import 'package:flutter/material.dart';

import '../M-12/cls-2,list.dart';
import '../m-13/DragDrop.dart';
import '../m-13/cls-1.dart';
import '../m11-c1.dart';
class NaviUi extends StatefulWidget {
  const NaviUi({super.key});

  @override
  State<NaviUi> createState() => _NaviUiState();
}

class _NaviUiState extends State<NaviUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              color: Colors.grey,
              child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.orange,
                    borderRadius: BorderRadius.circular(15)
                ),
                  indicatorPadding: EdgeInsets.all(1),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.red,
              
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home),
                      text: 'Home',
                    ),
                    Tab(
                      icon: Icon(Icons.favorite),
                      text: 'fav',
                    ),
                    Tab(
                      icon: Icon(Icons.settings),
                      text: 'setting',
                    ),
                  ]),
            ),
          ),
        ),
        body: TabBarView(children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Center(
                child: Text('Home',
                  style: TextStyle(fontSize: 30,
                      color: Colors.white),)),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.red
            ),
            child: Center(
                child: Text('Fav',
                  style: TextStyle(fontSize: 30,
                      color: Colors.white,)),
          ),),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.green
            ),
            child: Center(
                child: Text('Setting',
                  style: TextStyle(fontSize: 30,
                      color: Colors.white),)),
          ),

          Module11(),
          Dragdrop(),
          Module12cls2(),



        ]),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius : 42,
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn2nmWoa-66Yo5xylQwIiAxtvMrK2pB2l4CA&s'),
                      ),

                      SizedBox(height: 10,),
                      Text('Lichi',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                      Text('Lichi12@gmail.com',style: TextStyle(fontSize: 10),),

                    ],
                  )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Listitam 1'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Listitam 2'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                title: Text('Listitam 3'),
                onTap: (){},
              ),Divider(),
              ListTile(
                title: Text('Listitam 4'),
                onTap: (){},
              ),
              Divider(),
              ListTile(
                title: Text('Listitam 5'),
                onTap: (){},
              ),
            ],
          ),
        ),


      ),
    );
  }
}
