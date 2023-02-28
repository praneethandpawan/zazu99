import 'package:flutter/material.dart';




class tttt extends StatefulWidget {
  @override
  _ttttState createState() => _ttttState();
}

class _ttttState extends State<tttt> {
  int _pageIndex = 0;

  /// Our dynamic AppBar content
  late String _appBarTitle;
  List<Widget> _appBarActions = [];
  late Color _appBarColor;

  List<BottomNavigationBarItem> _navBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      // label: Text('Page 1'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.alarm),
      // title: Text('Page 2'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.photo_library),
      // title: Text('Page 3'),
    ),
  ];

  /// Actions for page 1
  List<Widget> _pageOneActions = [
    IconButton(
      icon: Icon(Icons.add),
      onPressed: () {},
    ),
  ];

  /// Actions for page 2
  List<Widget> _pageTwoActions = [
    IconButton(
      icon: Icon(Icons.add_a_photo),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.add_alert),
      onPressed: () {},
    ),
  ];

  /// Actions for page 3
  List<Widget> _pageThreeActions = [
    IconButton(
      icon: Icon(Icons.add_box),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.add_circle_outline),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.add_call),
      onPressed: () {},
    ),
  ];

  /// Set AppBar content based on page index
  void _setAppBarContent() {
    switch(_pageIndex) {
      case 0:
        setState(() {
          _appBarTitle = "Page One";
          _appBarActions = _pageOneActions;
          _appBarColor = Colors.blue;
        });
        break;
      case 1:
        setState(() {
          _appBarTitle = "Page Two";
          _appBarActions = _pageTwoActions;
          _appBarColor = Colors.green;
        });
        break;
      case 2:
        setState(() {
          _appBarTitle = "Page Three";
          _appBarActions = _pageThreeActions;
          _appBarColor = Colors.indigo;
        });
        break;
      default:
        break;
    }
  }

  @override
  void initState() {
    _setAppBarContent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        actions: _appBarActions,
        backgroundColor: _appBarColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _pageIndex,
        selectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
          _setAppBarContent();
        },
        items: _navBarItems,
      ),
    );
  }
}