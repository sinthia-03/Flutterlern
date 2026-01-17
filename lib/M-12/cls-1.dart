import 'package:flutter/material.dart';
class Mudle12 extends StatelessWidget {
  const Mudle12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                    height: 180,
                    width: 180,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 25,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),


            Stack(
              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqv2ghavSsvp-C_hfxGV6C7iYrH5-2vVCAlg&s',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                ),
                Container(

                  height: 180,
                  color: Colors.black.withOpacity(0.35),
                ),
                Row(

                  children: [
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('Brown sky',style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,))
                  ],
                )

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqv2ghavSsvp-C_hfxGV6C7iYrH5-2vVCAlg&s',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: ElevatedButton(onPressed: (){}, child: Text('Book now',style: TextStyle(fontSize: 10),
                  )
                )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
