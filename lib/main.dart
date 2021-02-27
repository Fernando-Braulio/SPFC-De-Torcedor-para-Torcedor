import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:noticias_torcedor/routes/app_routes.dart';
import 'package:noticias_torcedor/stores/page_store.dart';
import 'package:noticias_torcedor/views/base_screen.dart';

void main() {
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
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
        AppRoutes.HOME: (_) => BaseScreen(),
      },
    );
  }
}
