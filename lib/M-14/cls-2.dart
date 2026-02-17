import 'package:flutter/material.dart';
import 'package:untitled4/M-14/cls1-.dart';
import 'package:untitled4/M-14/test.dart';
class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>LifeCycle()));
            },
                child:Text('Home')
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Test(name: 'Apple', price: 300, onTap: () {
                    print('Hello from Home page');

                  },)));
            },
                child:Text('Test')
            ),
            
            //Name Routes
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,
                  '/login');
            },
                child: Text('Login')),

            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,
                  '/test2',arguments: {
                'name' : 'Banna',
                    'price' : 50,
                    'onTap': ()
                    {
                      print('Nmaed Routes');
                    }
                  });
            },
                child: Text('Test with argu')),
          ],
        ),
      ),


    );
  }
}
