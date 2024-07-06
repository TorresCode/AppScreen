import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.white, 
            title: Text('Facebook', 
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1.2
                          ),
                  ),
                  centerTitle: false,
                  floating: true,
                  actions: [
                    IconButton(
                      onPressed: () {}, 
                      icon: Icon(Icons.search),
                      iconSize: 30.0,
                      color: Colors.black,
                    )
                  ],
          )
        ],
      ),
    );
  }
}