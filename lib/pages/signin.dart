import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:pages_of_projectc/pages/homepage.dart';


class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 5.0),


            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 5.0),
            TextFormField(

              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Mobile Number', border: OutlineInputBorder(),),),
            SizedBox(height: 5.0),
            TextFormField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Age', border: OutlineInputBorder(),),
            ),
            SizedBox(height: 5.0),
            TextFormField(

              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(labelText: 'Birthdate', border: OutlineInputBorder(),),
            ),
            SizedBox(height: 5.0),
            TextFormField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Monthly Income' ,border: OutlineInputBorder(),),
            ),
            SizedBox(height: 5.0),
            DropdownButtonFormField<String>(

              hint: Text('Gender'),

              onChanged: (value) {
                setState(() {

                });
              },
              items: ['Male', 'Female', 'Other']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(border: OutlineInputBorder(),),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(


              onPressed: ()
              => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const homepage())) ,

              child: Text('Sign In'),),


          ],
        ),
      ),
      backgroundColor: Colors.greenAccent,
    );

  }
}