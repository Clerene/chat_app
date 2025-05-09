
import 'package:flutter/material.dart';

import 'chat_page.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  final _formkey = GlobalKey<FormState>();

  void loginUser(context){

    if(_formkey.currentState!=null && _formkey.currentState!.validate()){
    print(userNameController.text);
    print(passwordController.text);

    Navigator.pushReplacementNamed(context, '/chat',
    arguments: '${userNameController.text}');
    print('login successful');
  }else {
      print('not successfl');
    }
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

          Form(
            key: _formkey,
          child: Column(
            children: [
          TextFormField(
            validator: (value){
              if(value != null && value.isNotEmpty && value.length < 5){
                return "Your username should be more than 5 characters";
              }
              else if (value != null && value.isEmpty){
                return "Please enter you username";
              }
              return null;
            },
            controller: userNameController,
            decoration: InputDecoration(
              hintText: 'Add your username',
              hintStyle: TextStyle(color: Colors.blueGrey),
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Type your password',
                hintStyle: TextStyle(color: Colors.blueGrey),
                border: OutlineInputBorder()
            ),
          ),
          ],
          ),
          ),
          SizedBox(
            height: 24,
          ),
          ElevatedButton(onPressed: () {
            loginUser(context);
          },
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
