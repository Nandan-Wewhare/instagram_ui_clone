import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'cameraScreen.dart';
import 'direct.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Image.asset('images/logo.png'),
        ),
        leading: IconButton(
          onPressed: () {
            //open camera page from here.
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => CameraClass()));
          },
          icon: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
        ),
        actions: [
          Transform.rotate(
            angle: -pi / 4,
            child: IconButton(
                icon: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => Direct()));
                }),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                StoryWidget('images/dp1.png', 'Your Story'),
                StoryWidget('images/dp2.png', 'oyelalit'),
                StoryWidget('images/dp3.png', 'ad_saxena'),
                StoryWidget('images/dp4.png', 'absolutely_abhi'),
                StoryWidget('images/dp5.png', 'dart.lang')
              ],
            ),
          ),
          Divider(thickness: 1),
          PostWidget('images/post1.png', 'thesarcasticpage',
              'images/content1.png', 'abcdefgh'),
          PostWidget('images/dp3.png', 'tube.indian', 'images/content2.png',
              'abcdefgh'),
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  PostWidget(this.userdp, this.username, this.postUrl, this.caption);
  final String userdp;
  final String username;
  final String postUrl;
  final String caption;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              ListTile(
                dense: true,
                leading: CircleAvatar(
                  backgroundImage: AssetImage(userdp),
                ),
                title: Text(
                  username,
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
                trailing: PopupMenuButton(
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Report...'),
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Turn on post notifications'),
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('About this account'),
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Copy Link'),
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Share To...'),
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Unfollow'),
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Mute'),
                            ),
                          ),
                        ]),
              ),
              Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(postUrl),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.outlined_flag,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: null,
                  ),
                  Transform.rotate(
                    angle: -pi / 4,
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: null,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.bookmark_border,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: null),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 4),
                    child: Text(
                      '69 likes',
                      style: GoogleFonts.robotoCondensed(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      username,
                      style: GoogleFonts.robotoCondensed(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      caption,
                      style: GoogleFonts.robotoCondensed(fontSize: 17),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'View all 20 comments',
                      style: GoogleFonts.robotoCondensed(
                          fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class StoryWidget extends StatelessWidget {
  StoryWidget(this.imageUrl, this.storyUser);
  final String imageUrl;
  final String storyUser;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: CircleAvatar(
              maxRadius: 40,
              backgroundImage: AssetImage(
                imageUrl,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              storyUser,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
