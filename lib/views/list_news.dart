import 'package:flutter/material.dart';

class ListNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPFC"),
        actions: [
          IconButton(
            icon: Icon(Icons.view_headline),
            onPressed: () => {},
            // onPressed: () {
            //   Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
            // },
          )
        ],
      ),
      body: Container(child: Text("Teste"),),
    );
  }
}