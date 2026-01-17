import 'package:flutter/material.dart';
import 'package:untitled4/m-13/widget/cittycard.dart';
class Module13 extends StatelessWidget {
  const Module13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Expanded(
              child: ListView.builder(
                  itemCount:10,
                  itemBuilder: (context,index)
              {
                return citycard(img: 'https://www.dubai.it/en/wp-content/uploads/sites/142/dubai-marina-hd.jpg',
                    citynm: 'Dubai');
              }
              ),
            ),

            ],


        ),
      ),

    );
  }
}

