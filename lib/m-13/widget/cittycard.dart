import 'package:flutter/material.dart';
class citycard extends StatelessWidget {
  final String img, citynm;
  const citycard({
    super.key, required this.img, required this.citynm,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(img,
          height: 100,
          width: 200,
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
                child: Text(citynm,
                  style: TextStyle(
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
    );
  }
}