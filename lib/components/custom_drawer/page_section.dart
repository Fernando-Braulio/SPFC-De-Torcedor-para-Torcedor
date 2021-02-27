import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:noticias_torcedor/components/custom_drawer/page_tile.dart';
import 'package:noticias_torcedor/stores/page_store.dart';

class PageSection extends StatelessWidget {
  final PageStore _pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: 'Notícias',
          iconData: Icons.library_books_sharp,
          onTap: () {
            _pageStore.setPage(0);
          },
          highligted: _pageStore.page == 0,
        ),
        PageTile(
          label: 'Favoritos',
          iconData: Icons.favorite,
          onTap: () {
            _pageStore.setPage(1);
          },
          highligted: _pageStore.page == 1,
        ),
        PageTile(
          label: 'Próximos Jogos',
          iconData: Icons.help,
          onTap: () {
            _pageStore.setPage(2);
          },
          highligted: _pageStore.page == 2,
        ),
        PageTile(
          label: 'Classificação',
          iconData: Icons.format_list_numbered,
          onTap: () {
            _pageStore.setPage(3);
          },
          highligted: _pageStore.page == 3,
        ),
        PageTile(
          label: 'Jogadores',
          iconData: Icons.people_alt_rounded,
          onTap: () {
            _pageStore.setPage(4);
          },
          highligted: _pageStore.page == 4,
        ),
        PageTile(
          label: 'História',
          iconData: Icons.list,
          onTap: () {
            _pageStore.setPage(5);
          },
          highligted: _pageStore.page == 5,
        ),
        PageTile(
          label: 'Sobre',
          iconData: Icons.sd_card_alert_outlined,
          onTap: () {
            _pageStore.setPage(6);
          },
          highligted: _pageStore.page == 6,
        ),
      ],
    );
  }
}
