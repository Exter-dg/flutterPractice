import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello world"),
          TextButton(onPressed: () {},
              child: Text("This is a button"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.black
              ),
          ),
          Container(
            color:Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text("Container")
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Hi Nipun"),
        onPressed: () => {},
        backgroundColor: Colors.red[400],
      ),
    );
  }
}

