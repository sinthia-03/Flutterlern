import 'package:flutter/material.dart';

class Mocls2 extends StatelessWidget {
  const Mocls2({super.key});

  @override
  Widget build(BuildContext context) {

    void showAlertDialog() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.red.shade100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(width: 2, color: Colors.red),
          ),
          icon: Icon(Icons.delete, color: Colors.red, size: 50),
          title: Text('Warning'),
          content: Text('Are you sure delete?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // close
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
          ],
        ),
      );
    }

    void showSimpleDialogBox() {
      showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: Text('Simple Dialog'),
          children: [

            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Bangla'),
            ),

            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('English'),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Enter your age'),
                  TextField(),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel'),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Save'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    
    void showSnackbar() {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Item deleted'),
          action: SnackBarAction(label: 'undo', onPressed: (){}),
          )
      );
    }

    showBottomSheet() {
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Choose Option'),
            ListTile(
              title: Text('option-1'),
            ),
            ListTile(
              title: Text('option-2'),
            ),
            ListTile(
              title: Text('option-1'),
            ),
            ListTile(
              title: Text('option-1'),
            )
          ],
        ),
      ));


    }
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert & Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: showAlertDialog,
              child: Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: showSimpleDialogBox,
              child: Text('Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: showSnackbar,
              child: Text('Simple Snakbar'),
            ),
            ElevatedButton(
              onPressed: showBottomSheet,
              child: Text('Bottom Sheet'),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showBottomSheet();
        },
        child: Icon(Icons.edit,color: Colors.white,),
        backgroundColor: Colors.red,),
    );
  }
}
