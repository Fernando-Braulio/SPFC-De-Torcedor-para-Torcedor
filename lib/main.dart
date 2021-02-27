import 'package:flutter/material.dart';
import 'package:noticias_torcedor/routes/app_routes.dart';
import 'package:noticias_torcedor/views/list_news.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SPFC - De Torcedor para Torcedor',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.HOME: (_) => ListNews(),
        },
      );
  }
}