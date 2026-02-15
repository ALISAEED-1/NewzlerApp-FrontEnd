import 'package:flutter/material.dart';
import 'package:front_end_project/line_2/account_1.dart';
import 'package:front_end_project/line_5/search_1.dart';
import 'package:front_end_project/line_6/video_live_new_1.dart';
import 'package:front_end_project/line_7/home_1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'line_5/tranding.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;

  // Pages list
  final List<Widget> _pages = const [
    Home1Demo(),
    TrandingDemo(),
    VideoLiveNew1Demo(),
    Search1Demo(),
    Account1Demo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],  // show the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 9,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 9,
          fontWeight: FontWeight.w500,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_outlined),
            label: "TRENDING",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.slow_motion_video_sharp),
            label: "VIDEO",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "SEARCH",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_outlined),
            label: "MORE",
          ),
        ],
      ),
    );
  }
}
