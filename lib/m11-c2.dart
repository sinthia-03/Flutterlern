
import 'package:flutter/material.dart';
import 'package:untitled4/Home.dart';
import 'package:untitled4/app.dart';

class Class2 extends StatelessWidget {
  const Class2({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontro = TextEditingController();
    TextEditingController passwordcon = TextEditingController();
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
    appBar: AppBar(
    title: Text('login'),
    ),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text('Login with phone & Password',
             style:Theme.of(context).textTheme.bodySmall
             ),
              SizedBox(
                height: 13,
              ),
              TextFormField(
                controller: phonecontro,
                decoration: InputDecoration(
                  hintText: 'phone number',
                ),
                validator: (value){
                  if(value == null || value.isEmpty)
                    {
                      return 'please enter phone number';
                    }
                  else if(value.length <6 )
                    {
                      return 'please enter correct phone number';
            
                    }
                  else
                    {
                      return null;
                    }
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passwordcon,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value == null || value.isEmpty)
                    {
                      return ' please Enter password';
                    }
                  else if(value.length < 6)
                    {
                      return ' password must be 6 charecter';
            
                    }
                  else
                    return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: (){
                      if (_formkey.currentState!.validate())
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            
                        },child:Text('Login')),
              ),
              ElevatedButton(onPressed: (){}, child: Text('text')),
              ElevatedButton(onPressed: (){}, child: Text('text')),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.blue,
                  ),
                  Positioned(
                    left: 1,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg"),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 5,
                    child: Container(
                      width: 20,
                      height: 20,
                      child: Text('active ago'),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              )
            ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
