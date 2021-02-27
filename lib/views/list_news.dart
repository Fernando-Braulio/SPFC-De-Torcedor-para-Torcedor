import 'package:flutter/material.dart';
import 'package:noticias_torcedor/components/custom_drawer/custom_drawer.dart';
import 'package:noticias_torcedor/components/custom_post/custom_post_picture.dart';

class ListNews extends StatefulWidget {
  @override
  _ListNewsState createState() => _ListNewsState();
}

class _ListNewsState extends State<ListNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: Text("Notícias")),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 8),
                children: [
                  PostPicture(
                    url:
                        "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=640",
                    description:
                        "Teste dafdsfa adsfasd asdfa dsf a adfsa sdf asdf df ",
                    bfavorite: false,
                  ),
                  PostPicture(
                    url:
                        "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=940",
                    description:
                        "Teste2 dafdsfa adsfasd asdfa dsf asdf asd fasdfasdf adfsa sdf asdf df asdfa sdfasdfa sdfasdf asd fasdfasdf adfsa sdf asdf df sfghhhh dfg",
                    bfavorite: true,
                  ),
                  PostPicture(
                    url:
                        "https://images.pexels.com/photos/1212600/pexels-photo-1212600.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=200&w=1260",
                    bfavorite: false,
                    description: "Teste3 dafdsfa adsfasdsdf df ",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
