
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void loginUser(){
    print('login successful');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Add Text and image to the vertical and horizontal centre of widget
      body: Center(
        child: Padding(
        padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Let\'s sign you in!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          //TODO: Align text to the centre
          Text(
            'Welcome back! \n You\'ve been missed!',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.blueGrey),
          ),

          Image.network(
            'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
            height: 200,
          ), // Image.network
         
          ElevatedButton(onPressed: loginUser,
           child: Text('Click me!',
               style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.w300))),
          TextButton(onPressed: () {
            print('Pressed on the URL!');
          }, child: Text('https://poojabhaumik.com')),
        ],
      ),
      ),
    ),
    );
  }
}
