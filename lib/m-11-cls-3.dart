import 'package:flutter/material.dart';

class Class3 extends StatelessWidget {
  const Class3({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    double screenwidth = screensize.width;
    double screenHight = screensize.height;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('cls-3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          orientation == Orientation.landscape? Text('Hello Now you are in  landsape mode'): SizedBox(height: 20,),
          SizedBox(height: 20),
          Center(
            child: orientation == Orientation.portrait ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 300,
                  color: Colors.red,

                ),
                Text('Textt',
                style: TextStyle(
                  fontSize: 18
                ),),

                Container(
                  height: screenHight * 0.2,
                  width: screenwidth * 0.8,
                  color: Colors.blue,
                )
              ],
            ) : Row(
              children: [
                Container(
                  height: 150,
                  width: 300,
                  color: Colors.red,

                ),
                Text('Textt',
                  style: TextStyle(
                      fontSize: 18
                  ),),

                Container(
                  height: screenHight * 0.2,
                  width: screenwidth * 0.8,
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
