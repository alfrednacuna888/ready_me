import 'package:flutter/material.dart';

class Signup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: 100,
                child: Image.asset('assets/images/register.png')
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 40
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, bottom: 5),
              child: Text("FIRST NAME"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter first name",
                  prefixIcon: Icon(Icons.person)
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, bottom: 5),
              child: Text("LAST NAME"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter last name",
                  prefixIcon: Icon(Icons.person)
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, bottom: 5),
              child: Text("EMAIL"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter email",
                  prefixIcon: Icon(Icons.email)
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, bottom: 5),
              child: Text("PASSWORD"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter password",
                  prefixIcon: Icon(Icons.lock)
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo[800]),), 
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Text("Done",style: TextStyle(color: Colors.white),),
                  ), 
                  onPressed: (){
                    Navigator.pop(context);                    
                  },)
            )
          ],
        )
    );
  }
}