import 'package:flutter/material.dart';
class Mod13cls3 extends StatelessWidget {
  const Mod13cls3({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String,String>> carditem = [
      {
        'img': 'https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w=',
        'name': 'Apple',
      },
      {
        'img': 'https://chemwatch.net/wp-content/uploads/2021/11/image-6.jpeg',
        'name': 'Orange',
      },
      {
        'img': 'https://m.media-amazon.com/images/I/61gYP-WhvFL._AC_UF894,1000_QL80_.jpg',
        'name': 'Banna',
      },
      {
        'img':'https://www.biovie.fr/img/cms/histoire-origine-mangue.png',
        'name':'Mango'
      },

    ];
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Card'),
      ),
      body: ListView.builder(
    itemCount: carditem.length,
          itemBuilder: (context,index)
    { final item = carditem[index];
      return Dismissible(
        key: Key(item['name']!),
        confirmDismiss: (direction)async
        {
          if(direction==DismissDirection.startToEnd)
            {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${item['name']}'
                      ' QTY incresed'))
              );
            }
          else if(direction==DismissDirection.endToStart)
            {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${item['name']} removed form card'))
              );
            }
        },

        background: Container(
          color: Colors.green,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(Icons.add,color: Colors.white,),

        ),
        secondaryBackground: Container(
          color: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(Icons.delete,color: Colors.white,),

        ),

        child: Card(
          child: ListTile(
          title: Text(item['name']!),
            leading:Image.network('${item['img']}') ,
            trailing: Text('QTY:2',style: TextStyle(fontSize: 15),),
          ),
        ),
      );
    }
    )
    );
  }
}
