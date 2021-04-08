import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => Signup()
      },
    );
  }
}

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50),
            Center(
              child: SizedBox(
                width: 100,
                child: Image.asset('assets/images/logo.png')
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Text(
                "Ready Me",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 40
                ),
              ),
            ),
            SizedBox(height: 100),
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
                  hintText: "Enter email"
                ),
              ),
            ),
            SizedBox(height: 30),
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
                  hintText: "Enter password"
                ),
              ),
            ),
            SizedBox(height: 35),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo[800]),), 
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Text("LOGIN",style: TextStyle(color: Colors.white),),
                  ), 
                  onPressed: (){},)
            ),
            SizedBox(height: 10),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo[800]),), 
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Text("SIGNUP",style: TextStyle(color: Colors.white),),
                  ), 
                  onPressed: (){
                    Navigator.pushNamed(context, '/signup');
                  },)
            )
          ],
        )
    );
  }
}

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
                  hintText: "Enter first name"
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
                  hintText: "Enter last name"
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
                  hintText: "Enter email"
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
                  hintText: "Enter password"
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