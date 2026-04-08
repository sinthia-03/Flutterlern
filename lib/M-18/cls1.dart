import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Appi extends StatefulWidget {
  const Appi({super.key});

  @override
  State<Appi> createState() => _AppiState();
}

class _AppiState extends State<Appi> {

  List products = [];
  bool isLoding = true;

  Future<void>getProducts()async {
    final url = Uri.parse('https://todo-restapi-crud-render.onrender.com/get_all_todo');
    final response = await http.get(url);
    print(response);
    if(response.statusCode == 200)
      {

        final jsonResponse = jsonDecode(response.body);
        setState(() {
          products = jsonResponse;
          isLoding = false;
        });
      }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('product'),
      ),
      body: isLoding ? const Center(child: CircularProgressIndicator()) : 
      GridView.builder(
        padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 1),
          itemCount: products.length,
          itemBuilder: (context,index){
            final item = products[index];

            return Card(
              elevation: 3,
              child: Padding(padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(item['title'] ?? 'No Title',maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              ),
            );
          }

    )
    );
  }
}
