import 'package:application/password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image_vortex.jpg'),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'What do people call you?',
                        labelText: 'Username *'),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                        icon: Icon(Icons.password), labelText: 'Password *'),
                    obscureText: true,
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                  TextButton(onPressed: (){
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  }, child: Text("Forgot Password?"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}