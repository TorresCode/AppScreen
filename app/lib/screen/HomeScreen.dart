import 'package:app/data/data.dart';
import 'package:app/models/post_model.dart';
import 'package:app/widgets/circle_buttom.dart';
import 'package:app/widgets/create_post_conteiner.dart';
import 'package:app/widgets/post_contaner.dart';
import 'package:app/widgets/rooms.dart';
import 'package:app/widgets/stories.dart';
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
            pinned: true,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButtom(
                icon: Icons.search, 
                iconSize: 30.0, 
                onPressed: () {
                print("Search");
                }
              ),
              CircleButtom(
                icon: Icons.message_outlined, 
                iconSize: 30.0, 
                onPressed: () {
                print("Message");
                }
              ),
            ],
          ),


          //TextButtomIcon
          SliverToBoxAdapter(child: CreatePostConteiner(currentUser: currentUser)),
          //Last TextButtomIcon


          //Users
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(
                onlineUsers: [],
              ),
            ),
          ),
          //Last Users

          //Stories
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Stories(stories: [],)
            ),
          ),
          //Last Stories


          /*SliverList(delegate: SliverChildBuilderDelegate((context, index) 
            {
              final Post post = posts[index];
              return PostContaner(post: [],);
            },
            childCount: posts.length,
          ))*/
          

          //Scroll(Banner)
          /*SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(5.0),
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.90,
                          height: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.amberAccent
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.90,
                          height: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blue
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.90,
                          height: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color.fromARGB(255, 8, 22, 33),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),*/
          //LastScroll (Banner)



          //Scroll Page
          /*SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(5.0),
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.98,
                          height: MediaQuery.of(context).size.height * 0.7,
                          color: const Color.fromARGB(162, 33, 149, 243),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.98,
                          height: MediaQuery.of(context).size.height * 0.7,
                          color: Color.fromARGB(184, 8, 22, 33),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )*/
          //LastScroll Page
        ],
      ),
    );
  }
}
