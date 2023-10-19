import 'package:flutter/material.dart';
import 'package:flutter_module/views/home/home_view.dart';
import 'package:flutter_module/views/mine/mine_view.dart';
import 'package:flutter_module/views/service/service_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RootTabBar extends StatefulWidget {
  const RootTabBar({
    super.key,
  });

  static Route route() =>
      MaterialPageRoute(builder: (context) => const RootTabBar());

  @override
  State<RootTabBar> createState() => _RootTabBarState();
}

class _RootTabBarState extends State<RootTabBar>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _tabViews(),
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _tabs(),
        onTap: onTabbarTap,
        currentIndex: currentPageIndex,
      ),
    );
  }

  List<Widget> _tabViews() {
    return [
      HomeView(),
      ServiceView(),
      MineView(),
    ];
  }

  List<BottomNavigationBarItem> _tabs() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: AppLocalizations.of(context)!.homeViewTitle,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.electrical_services),
        label: AppLocalizations.of(context)!.serviceViewTitle,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: AppLocalizations.of(context)!.mineViewTitle,
      ),
    ];
  }

  onTabbarTap(index) {
    _pageController.jumpToPage(index);
    setState(() {
      currentPageIndex = index;
    });
  }
}
