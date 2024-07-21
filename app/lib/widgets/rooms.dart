import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List onlineUsers;
  const Rooms({super.key, required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + 20,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }

            return Stack(children: [
              /*Container(
                  margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
                  width: 40,
                  height: 40,
                  child: /*ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black26),
                      child: Image.asset('assets/imagem/tc.png'),
                    ),
                  )
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/imagem/tc.png',
                    ),
                    backgroundColor: Color(0xFF969595),
                    radius: 20.0,
                  ),*/
                  
                ),*/
              Container(
                margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/imagem/tc.png',
                  ),
                  backgroundColor: Color(0xFF969595),
                  radius: 20.0,
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
