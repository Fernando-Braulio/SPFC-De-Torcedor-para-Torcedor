import 'package:flutter/material.dart';
import 'package:noticias_torcedor/components/custom_drawer/custom_drawer.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: Text("Favoritos")),
      body: Container(
        color: Colors.orange,
        child: Text("Teste"),
      ),
    );
  }
}
