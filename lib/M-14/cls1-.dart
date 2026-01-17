import 'package:flutter/material.dart';
class LifeCycle extends StatefulWidget {
  LifeCycle({super.key}){
    print('1 Constructor');
  }

  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  int num = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
          num.toString(),
              style: TextStyle(fontSize: 100,
                fontWeight: FontWeight.bold,
            color: Colors.deepOrange),

            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  num++;
                  print(num);
                  setState(() {

                  });
                },
                    child: Text('+',style: TextStyle(fontSize: 35),)),
                ElevatedButton(onPressed: (){
                  num--;
                  print(num);
                  setState(() {

                  });
                },
                    child: Text('-',style: TextStyle(fontSize: 35),)),
              ],
            )

          ],
        ),
      ),

    );
  }
}
