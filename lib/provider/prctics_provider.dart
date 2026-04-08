import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/provider/count_provider.dart';

class PrcticsProvider extends StatelessWidget {
  const PrcticsProvider({super.key});



  @override
  Widget build(BuildContext context) {

    final counter = Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Count with provider'),
      ) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Consumer<CountProvider>(
          builder: (context,counter2,child) {
            return Text(counter2.count.toString(),style: TextStyle(fontSize: 50),);
          }
        ),
          Text(counter.count.toString(),style: TextStyle(fontSize: 50),),
          SizedBox(height: 150,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                counter.increment();
              }, child: Text('+')),
              ElevatedButton(onPressed: (){
                  counter.decrement();
              }, child: Text('-')),
            ],
          )
        ],
      ),

    );
  }
}
