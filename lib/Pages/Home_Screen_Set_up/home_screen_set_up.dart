import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import '../Actual_Pages/Account Page/account_page.dart';
import '../Actual_Pages/Ads Screen/ads_screen.dart';
import '../Actual_Pages/Favorites_Page/favorite_page.dart';
import '../Actual_Pages/Home_Page/home.dart';
import '../Actual_Pages/Notifications Screen/notifications_Screen.dart';

class appbar_bottombar extends StatefulWidget {

  // appbar_bottombar({Key key, this.title}) : super(key: key);

  // final String title;

  @override
  _appbar_bottombarState createState() => _appbar_bottombarState();
}

class _appbar_bottombarState extends State<appbar_bottombar> {
  var _selectedPageIndex;
  late List<Widget> _pages;
  late PageController _pageController;

  

  @override
  void initState() {
    super.initState();

    _selectedPageIndex = 0;

    _pages = [
      Home(),
      favorites_page(),
      ads_screen(),
      notifications_screen(),
      account_screen(),

    ];

    _pageController = PageController(initialPage: _selectedPageIndex);
  }


  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView(
        controller: _pageController,
        //The following parameter is just to prevent
        //the user from swiping to the next page.
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.house_sharp,
              size: 33,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.heart,
              size: 33,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.percent,
              size: 33,
            ),
            label: 'Ads',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.bell,
              size: 33,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PhosphorIcons.user,
              size: 33,
            ),
            label: 'Account',
          ),
        ],
        selectedItemColor: const Color(0xFF0672CB),
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: _selectedPageIndex,
        onTap: (selectedPageIndex) {
          setState(() {
            _selectedPageIndex = selectedPageIndex;
            _pageController.jumpToPage(selectedPageIndex);
          });
        },
      ),
    );
  }
}

