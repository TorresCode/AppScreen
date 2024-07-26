import 'package:app/models/models.dart';
import 'package:app/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({super.key, required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    // Log the online users data
    print("Online users: $onlineUsers");
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          scrollDirection: Axis.horizontal,
          //itemCount: 1 + onlineUsers.length,
          itemCount: 1 + 20,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }

            //final User user = onlineUsers[index -1];
            return Stack(children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                child: 
                //ProfileAvatar(imageUrl: user.imageUrl, isActive: true,)
                CircleAvatar(
                radius: 20.0,
                backgroundColor: Color(0xFF969595),
                backgroundImage: AssetImage('assets/imagem/tc.png'),
                //backgroundImage: CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 15.0,
                    height: 15.0,
                    decoration: BoxDecoration(
                        color: Colors.green, 
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2.0,
                          color: Colors.white
                        )
                    ),
                  ))
            ]);
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        print("Button pressed");
      },
      icon: Icon(Icons.video_call, color: Colors.blueAccent, size: 30.0),
      label: Text(
        'Create Room',
        style: TextStyle(color: Colors.purpleAccent),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.blueAccent),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
