import 'package:flutter/material.dart';

class C3 extends StatelessWidget {
  const C3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('cls3',
          style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           ElevatedButton(
               style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadiusGeometry.circular(10)
           )
        ),
               onPressed: (){

             print('clik');
           }, child: Text('submit')),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10)
                      )
                  ),
                  onPressed: (){

                    print('clik');
                  }, child: Text('submit')),
            )
          ],
        ),
      ),

    );

  }
}
