import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:noticias_torcedor/stores/page_store.dart';
import 'package:noticias_torcedor/views/favorites.dart';

import 'list_news.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController _pageController = PageController();

  final PageStore _pageStore = GetIt.I<PageStore>();

  @override
  void initState() {
    super.initState();

    reaction(
      (_) => _pageStore.page,
      (page) => _pageController.jumpToPage(page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ListNews(),
          Favorites(),
          Container(color: Colors.black),
          Container(color: Colors.white),
          Container(color: Colors.purple),
          Container(color: Colors.green),
          Container(color: Colors.yellow),
        ],
      ),
    );
  }
}
