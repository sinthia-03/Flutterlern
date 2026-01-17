import 'package:flutter/material.dart';

class Mud13cl4 extends StatefulWidget {
  const Mud13cl4({super.key});

  @override
  State<Mud13cl4> createState() => _Mud13cl4State();
}

class _Mud13cl4State extends State<Mud13cl4> {
  bool selected = false;
  bool Nonselected = false;
  bool shoemessage = false;
  bool isLogin = false;
  bool showpannel = false;
  int cardcount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              // Animatedcomteiner

              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: selected ? 140 : 110,
                decoration: BoxDecoration(
                  color: selected ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text('product Card'),
              ),
            ),
            SizedBox(height: 10),

            //without Animated
            GestureDetector(
              onTap: () {
                setState(() {
                  Nonselected = !Nonselected;
                });
              },
              child: Container(
                height: Nonselected ? 140 : 110,
                decoration: BoxDecoration(
                  color: Nonselected ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text('product Card'),
              ),
            ),
            SizedBox(height: 50),
            Divider(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  shoemessage = !shoemessage;
                });
                Future.delayed(Duration(seconds: 3), () {
                  setState(() {
                    shoemessage = false;
                  });
                });
              },
              child: Text('Add to card'),
            ),

            // AnimatedOpacity

            AnimatedOpacity(
              opacity: shoemessage ? 1 : 0,
              duration: Duration(milliseconds: 2000),
        
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Added to card', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Card: '),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 3000),
        
                  child: Text('$cardcount', style: TextStyle(fontSize: 20)),
                  key: ValueKey(cardcount),
                ),
        
                IconButton(
                  onPressed: () {
                    setState(() {
                      cardcount++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),

            // AnimatedAlign

            SizedBox(
              height: 300,
              width: double.infinity,  // move korar jonno sapce dokar
              child: AnimatedAlign(
                alignment: isLogin ?
                Alignment.topCenter : Alignment.center,
                duration: Duration(milliseconds: 700),  // widget er position change kore
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://tinypng.com/images/social/website.jpg',
                  ),
                  radius: 50,
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isLogin = !isLogin; //aligment change
                });
              },
              child: Text('Login'),
            ),
            SizedBox(
              height: 30,
            ),
            
            //stack
            SizedBox(
              height: 200,
              child: Stack(   //stack diye anuimation
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        showpannel = !showpannel;
                      });
                      Future.delayed(Duration(seconds: 3),(){
                        setState(() {
                          showpannel = false;
                        });
                      });
                    },
                        child: Text('Toggle bottom')),
                  ),
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 800),
                    bottom: showpannel ? 0 : -120,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 120,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text('Bottom pannel'),

                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
