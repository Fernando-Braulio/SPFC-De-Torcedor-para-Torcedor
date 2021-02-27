import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/spfc02.png",
            height: 50,
          ),
        ],
      ),
    );
  }
}
