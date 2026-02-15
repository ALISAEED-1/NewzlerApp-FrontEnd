import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account2Demo extends StatefulWidget {
  const Account2Demo({super.key});

  @override
  State<Account2Demo> createState() => _Account2DemoState();
}

class _Account2DemoState extends State<Account2Demo> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ACCOUNT",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Color(0xff2124491A),
                height: 4,
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 28),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: const Icon(Icons.bookmark_border),
                    title: Text(
                      "My Bookmark",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: const Icon(Icons.article_outlined),
                    title: Text(
                      "My Publisher",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 28),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: const Icon(Icons.language),
                    title: Text(
                      "My Language",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
        
                  SizedBox(height:28),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: const Icon(Icons.grid_view_outlined),
                    title: Text(
                      "My Category",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
        
                  SizedBox(height: 28),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: const Icon(Icons.info_outline),
                    title: Text(
                      "About",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
        
                  SizedBox(height: 28),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: const Icon(Icons.lock_outline),
                    title: Text(
                      "PRIVACY",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
        
                  SizedBox(height: 28),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: const Icon(Icons.article_outlined),
                    title: Text(
                      "TERMS",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
        
                  SizedBox(height: 28),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: const Icon(Icons.share_outlined),
                    title: Text(
                      "SHARE THIS APP",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
        
                  SizedBox(height: 28),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: const Icon(Icons.star_border_outlined),
                    title: Text(
                      "RATE THIS APP",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
        
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              height: 4,
              color: Color(0xff2124491A),
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
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
