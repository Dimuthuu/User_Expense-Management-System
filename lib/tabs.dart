import 'package:flutter/cupertino.dart';
import './pages/expenses.dart';
import './pages/reports.dart';
import './pages/add.dart';
import './pages/settings.dart';
import './pages/home_page.dart';
import './types/widgets.dart';


class TabsController extends StatefulWidget {
  const TabsController({super.key});

  @override
  State<TabsController> createState() => _TabsControllerState();
}

class _TabsControllerState extends State<TabsController> {
  var _selectedIndex = 0;

  static const List<Widget> _pages = [
    Expenses(),
    Reports(),
    Add(),
    HomePage(), // Text recognizer
    Settings(),
  

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_favorites),
              label: 'Expenses',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chart_bar_fill),
              label: 'Reports',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.add),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_text_search),
              label: 'Recognizer',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.gear_solid),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return _pages[index];
            },
          );
        });
  }
}