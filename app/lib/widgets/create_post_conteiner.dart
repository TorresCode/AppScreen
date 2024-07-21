import 'package:flutter/material.dart';

class CreatePostConteiner extends StatelessWidget {
  //final User currentUser;
  const CreatePostConteiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 5.0),
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Color(0xFF969595),
                backgroundImage: AssetImage('assets/imagem/tc.png'),
              ),
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                      hintStyle: TextStyle(color: Colors.black26)),
                ),
              )
            ],
          ),
          Divider(
            height: 10.0,
            thickness: 0.1,
          ),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: () {
                      print("Post");
                    },
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text("Live")),
                VerticalDivider(
                  width: 8.0,
                  thickness: 0.1,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo,
                      color: Colors.green,
                    ),
                    label: Text("Photo")),
                VerticalDivider(
                  width: 8.0,
                  thickness: 0.1,
                ),
                TextButton.icon(
                    onPressed: () {
                      print("Room");
                    },
                    icon: Icon(Icons.video_call,
                        color: Color.fromARGB(255, 196, 74, 221)),
                    label: Text("Room"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
