import 'package:flutter/material.dart';
import 'package:posts_list/data/services/api_services.dart';

class PostsList extends StatefulWidget {
  const PostsList({super.key});

  @override
  State<PostsList> createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  List postsList=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiService().fetchPosts();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts List",style:TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
        body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: postsList.length,
                  itemBuilder: (context,index){
                    return Container(
                     decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.08),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
                            ),
                    );
                  },
                  
                  ),
              )
            ],
        ),
    );
  }
}
