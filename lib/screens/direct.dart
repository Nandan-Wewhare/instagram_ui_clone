import 'package:flutter/material.dart';

class Direct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => {Navigator.pop(context)}),
        title: Text(
          'Direct',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.camera,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.crop_square,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, top: 8),
              child: Text(
                'Messages',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            alignment: Alignment.topLeft,
          ),
          ChatTile('images/dp4.png', 'Kasukabe Defence Group',
              'You sent a post', 44),
          ChatTile('images/dp3.png', 'My Crush', 'I Love You', 5),
          ChatTile(
              'images/dp1.png', 'Another Chat', 'Sent a post by someone', 32),
          ChatTile(
              'images/dp4.png', 'Group #69', 'Abc sent a post by someone', 12),
          ChatTile('images/dp2.png', 'Kasukabe Defence Group',
              'You sent a post', 2),
          ChatTile('images/dp1.png', 'Kasukabe Defence Group',
              'You sent a post', 51),
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  ChatTile(this.chatImage, this.chatTitle, this.metaData, this.time);
  final String chatTitle;
  final String metaData;
  final String chatImage;
  final int time;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(chatImage),
      ),
      title: Text(chatTitle),
      subtitle: Text('$metaData . $time m'),
      trailing: IconButton(
        icon: Icon(Icons.camera_alt),
        onPressed: () {},
      ),
    );
  }
}
