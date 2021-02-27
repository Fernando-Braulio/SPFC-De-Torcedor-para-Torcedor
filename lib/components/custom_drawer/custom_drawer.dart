import 'package:flutter/material.dart';
import 'package:noticias_torcedor/components/custom_drawer/page_section.dart';

import 'custom_drawer_header.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(45)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: ListView(
            children: [
              CustomDrawerHeader(),
              PageSection(),
            ],
          ),
        ),
      ),
    );
  }
}
