
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  void loginUser(){
    print(userNameController.text);
    print(passwordController.text);

    print('login successful');
  }
  final userNameController = TextEditingController();
   final passwordController = TextEditingController();

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
          ),
          TextField(
            controller: userNameController,
            decoration: InputDecoration(
              hintText: 'Add your username',
              hintStyle: TextStyle(color: Colors.blueGrey),
              border: OutlineInputBorder()
            ),
          ),


          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Type your password',
                hintStyle: TextStyle(color: Colors.blueGrey),
                border: OutlineInputBorder()
            ),
          ),

          ElevatedButton(onPressed: loginUser,
           child: Text('Click me!',
               style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.w300))),
         GestureDetector(
           onTap: () {
             print('Linked clicked!');
           },
           child: Column(
             children: [
               Text('Find us on'),
         Text('https://poojabhaumik.com'),
          ],
         ),
        ),
        ],
      ),
      ),
    ),
    );
  }
}
