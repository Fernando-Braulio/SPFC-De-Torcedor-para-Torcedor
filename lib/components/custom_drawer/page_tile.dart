import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  const PageTile({this.label, this.iconData, this.onTap, this.highligted});

  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highligted;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: highligted ? Colors.red : Colors.black54,
        ),
      ),
      leading: Icon(
        iconData,
        color: highligted ? Colors.red : Colors.black54,
      ),
      onTap: onTap,
    );
  }
}
