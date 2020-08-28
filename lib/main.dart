import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
    );
  }
}

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selected = 0;
  List<Widget> _pages = [
    HomePage(),
    Center(
      child: Text('Search'),
    ),
    Center(
      child: Text('Add'),
    ),
    Center(
      child: Text('Likes'),
    ),
    Center(
      child: Text('Profile'),
    )
  ];
  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.hourglass_empty,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: Text('')),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Icons.find_in_page,
          color: Colors.black,
        ),
        title: Text('')),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.add_circle_outline,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Icons.add_circle,
          color: Colors.black,
        ),
        title: Text('')),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.outlined_flag,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Icons.airline_seat_flat_angled,
          color: Colors.black,
        ),
        title: Text('')),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.person_outline,
          color: Colors.black,
        ),
        activeIcon: Icon(
          Icons.person,
          color: Colors.black,
        ),
        title: Text('')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selected),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selected,
        items: _items,
        elevation: 20,
        onTap: (index) {
          setState(() {
            _selected = index;
          });
        },
      ),
    );
  }
}
