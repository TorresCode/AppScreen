import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  //final User currentUser;
  final List stories;
  const Stories({super.key, required this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        color: Colors.purple,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1 + 12,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CreateStoryButton(),
                );
              }

              return Stack(children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                  width: 120,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color.fromARGB(255, 255, 255, 255)),
                  child: Image.asset(
                    'assets/imagem/tc.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 8.0,
                    left: 20.0,
                    right: 20.0,
                    child: Text(
                      "TorresCode TorresCode TorresCode TorresCode",
                      style: TextStyle(color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                Positioned(
                    top: 15,
                    left: 15,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.blue)),
                      child: Image.asset('assets/imagem/tc.png'),
                    )),
              ]);
            }));
  }
}

class CreateStoryButton extends StatelessWidget {
  const CreateStoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print("Add new Story");
        },
        child: Stack(children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
            width: 120,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color.fromARGB(255, 177, 170, 170)),
            child: Image.asset(
              'assets/imagem/tc.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 8.0,
              left: 20.0,
              right: 20.0,
              child: Text(
                "TorresCode",
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
              top: 15,
              left: 15,
              child: Container(
                width: 35,
                height: 35,
                child: Icon(Icons.add),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    border: Border.all(width: 2.0, color: Colors.blue)),
              ))
        ]));
  }
}
