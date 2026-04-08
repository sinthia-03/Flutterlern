import 'package:flutter/material.dart';
class Todomodel extends StatefulWidget {
  const Todomodel({super.key});

  @override
  State<Todomodel> createState() => _TodomodelState();
}

class _TodomodelState extends State<Todomodel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO APP'),
      ),

      
    );
  }
}
