import 'package:application/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Form(
                      child: Column(
                        children: [
                          TextFormField(
                      style: TextStyle(
                      color: Colors.blue[900], fontWeight: FontWeight.w800),
                      decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'What do people call you?',
                          labelText: 'Username *'),
                    ),
                    SizedBox(height: 10),
                    TextFormField (
                      style: TextStyle(
                          color: Colors.blue[900], fontWeight: FontWeight.w800),
                      decoration: InputDecoration(
                          icon: Icon(Icons.mail), labelText: 'Email *'),
                      // onSaved: (String? value) {
                      //
                      // },
                      validator: ((value) {
                        if(value==null || value.isEmpty){
                          return 'Please Enter Some Text';
                        }
                        return null;
                      }),
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
                      child: Text('Sign Up'),
                    ),
                          TextButton(onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                          }, child: Text("Already have an account? Login"))
                        ],
                      )
                  ),
              ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}