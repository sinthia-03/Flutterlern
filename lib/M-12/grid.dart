import 'package:flutter/material.dart';
class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid viwe'),
      ),
     //appBar //body: GridView.count(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 5,
      // mainAxisSpacing: 6,
      // children: [
      //   Container(
      //     color: Colors.red,
      //   ),
      //   Container(
      //     color: Colors.yellow,
      //   ),
      //   Container(
      //     color: Colors.green,
      //   ),
      //   Container(
      //     color: Colors.black,
      //   ),
      //   Stack(
      //     children: [
      //       Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqv2ghavSsvp-C_hfxGV6C7iYrH5-2vVCAlg&s',
      //         height: 200,
      //         width: double.infinity,
      //         fit: BoxFit.cover,
      //       ),
      //       Container(
      //
      //         height: 180,
      //         color: Colors.black.withOpacity(0.35),
      //       ),
      //       Row(
      //
      //         children: [
      //           Positioned(
      //             child: Container(
      //               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      //               decoration: BoxDecoration(
      //                   color: Colors.yellow,
      //                   borderRadius: BorderRadius.circular(10)
      //               ),
      //               child: Text('Brown sky',style: TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 18
      //               ),
      //               ),
      //             ),
      //           ),
      //           Spacer(),
      //           IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,))
      //         ],
      //       )
      //
      //     ],
      //   ),
      //   Stack(
      //     children: [
      //       Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqv2ghavSsvp-C_hfxGV6C7iYrH5-2vVCAlg&s',
      //         height: 200,
      //         width: double.infinity,
      //         fit: BoxFit.cover,
      //       ),
      //       Container(
      //
      //         height: 180,
      //         color: Colors.black.withOpacity(0.35),
      //       ),
      //       Row(
      //
      //         children: [
      //           Positioned(
      //             child: Container(
      //               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      //               decoration: BoxDecoration(
      //                   color: Colors.yellow,
      //                   borderRadius: BorderRadius.circular(10)
      //               ),
      //               child: Text('Brown sky',style: TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 18
      //               ),
      //               ),
      //             ),
      //           ),
      //           Spacer(),
      //           IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,))
      //         ],
      //       )
      //
      //     ],
      //   ),
      //   Stack(
      //     children: [
      //       Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqv2ghavSsvp-C_hfxGV6C7iYrH5-2vVCAlg&s',
      //         height: 200,
      //         width: double.infinity,
      //         fit: BoxFit.cover,
      //       ),
      //       Container(
      //
      //         height: 180,
      //         color: Colors.black.withOpacity(0.35),
      //       ),
      //       Row(
      //
      //         children: [
      //           Positioned(
      //             child: Container(
      //               padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      //               decoration: BoxDecoration(
      //                   color: Colors.yellow,
      //                   borderRadius: BorderRadius.circular(10)
      //               ),
      //               child: Text('Brown sky',style: TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 18
      //               ),
      //               ),
      //             ),
      //           ),
      //           Spacer(),
      //           IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,))
      //         ],
      //       )
      //
      //     ],
      //   ),
      //
      // ]
      // )white
       body: GridView.builder(
           gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 3,
           crossAxisSpacing: 10,
           mainAxisSpacing: 10
           ),
           itemCount: 20,
         itemBuilder:(context, index)
      {
        return Column(
                children: [
                  Card(
                    elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Icon(Icons.phone,size: 40,color: Colors.white,),
                ),
                  ) ,
              Text('Add Money')
                  ],
              );
      }
            ),

        );

  }
}
