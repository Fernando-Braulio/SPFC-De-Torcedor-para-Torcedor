import 'package:flutter/material.dart';
import 'package:noticias_torcedor/components/custom_drawer/custom_drawer.dart';

class ListNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: Text("Notícias")),
      body: Container(
        color: Colors.white,
        child: Text("Teste"),
      ),
    );
  }
}
