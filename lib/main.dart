import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NewsFeed(),
  )
  );
}

class NewsFeed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(icon: Icon(Icons.home),
                  onPressed: (){
                  print('Go home');
                  }),
                IconButton(icon: Icon(Icons.person_add_alt),
                  onPressed: (){
                  print('Add user');
                  }),
                IconButton(icon: Icon(Icons.video_call),
                  onPressed: (){
                    print('make a video');
              }),
                IconButton(icon: Icon(Icons.verified_user),
                  onPressed: (){
                    print('see verified users');
              })
              ]
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            child: Container(
              height: 300,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/user2.png'),
                    ),
                    onTap: (){
                      print('The listTile is clicked');
                      },
                    title: Text('Username'),
                    subtitle: Text('September 9, 2021.11:30'),
                    trailing: Icon(Icons.more_horiz),
                  ),
                  Text("Deadline helps you to keep moving and get things done "
                      "faster and it will also increase your efficiency"),
                  SizedBox(height: 8,),
                  Expanded(child: Image.asset(
                    'images/image1.jpg'
                  ))
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}