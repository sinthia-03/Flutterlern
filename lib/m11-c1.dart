import 'package:flutter/material.dart';

class Module11 extends StatelessWidget {
  const Module11({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
   return Scaffold(
     body: SafeArea(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextField(
                 controller: phoneController,
                 keyboardType: TextInputType.phone,
                 decoration: InputDecoration(
                   hintText: 'Enter your phone number',
                   labelText: 'Phone Number',
                   labelStyle: TextStyle(
                     fontSize: 15,
                     color: Colors.blue,
                   ),
                   prefixIcon: Icon(Icons.phone),
                   suffixIcon: Icon(Icons.check),

                 ),
               ),
               SizedBox(
                 height: 5,
               ),
               TextField(
                 controller: passwordController,
                 obscureText: true,
                 decoration: InputDecoration(
                   hintText: 'Enter your Password',
                   hintStyle: TextStyle(
                       fontSize: 18
                   ),
                   labelText: 'Password',
                   labelStyle: TextStyle(
                     fontSize: 15,
                     color: Colors.blue,
                   ),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(50)
                   ),
                   prefixIcon: Icon(Icons.lock),
                   suffixIcon: Icon(Icons.remove_red_eye),
                 ),
               ),
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
                   ),
                     onPressed: (){
                     if(phoneController.text.isEmpty)
                       {
                         ScaffoldMessenger.of(context).showSnackBar
                           (SnackBar(
                             content: Text('Please Enter your phone number'),),
                         );
                       }
                     else if(phoneController.text.length != 11)
                       {
                         ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(
                                 content: Text('Please Enter Your Correct Phone Number'),),
                         );
                       }
                     else if (passwordController.text.isEmpty)
                       {
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please Enter Password'),),);

                       }
                     else if (passwordController.text.length < 6)
                       {
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password must be at least 6 characters'),),);
                       }
                     else
                       {
                         phoneController.clear();
                         passwordController.clear();
                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Submitted Successfully'),
                         ),);
                       }
                     }, child: Text('Submit')),
               ),
               SizedBox(
                 height: 10,
               ),



               Container(
                 alignment: Alignment.center,
                 height: 70,
                 width: 200,
                 child: Text('Conteiner'),
                 decoration: BoxDecoration(
                   color: Colors.grey,
                   borderRadius: BorderRadius.circular(20),
                   border: Border.all(
                     width: 2,
                     color: Colors.black
                   ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.3),
                        offset: Offset(10, 10),
                      ),
                    ]
                 ),
               )
             ],
           ),
         )

     ),

   );
  }
}
