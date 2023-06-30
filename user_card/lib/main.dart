import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int userLevel = 0;
  String name = "John Doe";
  String email = "john.doe@gmail.com";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("User Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            userLevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/profile-1.png"),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[400],
            ),
            const Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              "$name",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30,),
            const Text(
              "Current Level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "$userLevel",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(
                    Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text(
                  "$email",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 19,
                    letterSpacing: 1,
                  ),
                )
              ],
            )
          ],
        )
      )
    );
  }
}


