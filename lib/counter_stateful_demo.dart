import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {

  Color buttonColor;
  CounterStateful({Key? key, required this.buttonColor}) : super(key: key);

  @override

  State<CounterStateful> createState() => _CounterStatefulstate();
}

class _CounterStatefulstate extends  State<CounterStateful> {

  int counter = 0;
  void increment(){
    setState(() {
      counter++;
    });
    print(counter);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter!!!'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: widget.buttonColor,
        child: Icon(Icons.message),
        onPressed: () {
          increment();
        },
      ),

      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
