import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/di/getit.dart';
import 'package:movie_app/feature/discover/discover.dart' as discover;
import 'package:movie_app/feature/home/home.dart' as home;
import 'package:movie_app/feature/search/search.dart' as search;
import 'package:movie_app/feature/settings/view/settings_page.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  final FocusNode _searchFocusNode = FocusNode();

  List<Widget> get _pages => [
        BlocProvider<home.HomeBloc>(
          create: (BuildContext context) =>
              getIt.get<home.HomeBloc>()..add(const home.Init()),
          child: const home.HomePage(),
        ),
        BlocProvider<discover.DiscoverBloc>(
          create: (BuildContext context) =>
              getIt.get<discover.DiscoverBloc>()..add(const discover.Init()),
          child: const discover.DiscoverPage(),
        ),
        BlocProvider<search.SearchBloc>(
          create: (BuildContext context) =>
              getIt.get<search.SearchBloc>()..add(const search.Init()),
          child: search.SearchPage(
            searchFocusNode: _searchFocusNode,
          ),
        ),
        const SettingsPage(),
      ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 2) {
      _searchFocusNode.requestFocus();
    } else {
      _searchFocusNode.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home'.raw,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.category),
            label: 'Discover'.raw,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: 'Search'.raw,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Settings'.raw,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
