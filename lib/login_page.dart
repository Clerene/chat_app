
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Add Text and image to the vertical and horizontal centre of widget
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Let\'s sign you in!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.brown,
              fontWeight: FontWeight.bold, letterSpacing: 0.5,
            ),
          ),
          //TODO: Align text to the centre
          Text(
            'Welcome back! \n You\'ve been missed!',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blueGrey),
          ),

          Image.network(
            'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
            height: 200,
          ), // Image.network
          Container(
              height: 150,
              width: 150,
              // child: FlutterLogo(),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(
                      'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',),
                  ), //
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular (24)// BoxDe
              )
          )
        ],
      ),
      ),
    );
  }
}
