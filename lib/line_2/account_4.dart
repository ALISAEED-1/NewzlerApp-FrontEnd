import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Account4Demo extends StatefulWidget {
  const Account4Demo({super.key});

  @override
  State<Account4Demo> createState() => _Account4DemoState();
}

class _Account4DemoState extends State<Account4Demo> {
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

        title: Text("ACCOUNT",style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),),
      ),

      body: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 5,
              color: Color(0xff2124491A),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 170,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff209CEE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
            
                      ),
                      child:
                      Text("LOGIN",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xffFFFFFF),
                      ),)),
                ),
            
                        SizedBox(
            width: 170,
            height: 50,
            child: ElevatedButton(onPressed: (){
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
            
                ),
                child:
                Text("SIGN UP",style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.black,
                ),
                )
            ),
                        ),
            
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 5,
              color: Color(0xff2124491A),
            ),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 30,),
                ListTile(
                  tileColor: Color(0xffF5F5F5),
                  leading: Icon(Icons.assignment_outlined),
                  title: Text("Notifications",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),),
                ),
                SizedBox(height: 30,),
                ListTile(
                  tileColor: Color(0xffF5F5F5),
                  leading: Icon(Icons.brightness_2_outlined),
                  title: Text("Theme",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),),
                ),
                SizedBox(height: 30,),
                ListTile(
                  tileColor: Color(0xffF5F5F5),
                  leading: Icon(Icons.bookmark_border),
                  title: Text("My Bookmark",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),),
                ),
                SizedBox(height: 30,),
                ListTile(
                  tileColor: Color(0xffF5F5F5),
                  leading: Icon(Icons.article_outlined),
                  title: Text("My Publisher",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),),
                ),
                SizedBox(height: 30,),
                ListTile(
                  tileColor: Color(0xffF5F5F5),
                  leading: Icon(Icons.language),
                  title: Text("My Language",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),),
                ),
                SizedBox(height: 30,),
                ListTile(
                  tileColor: Color(0xffF5F5F5),
                  leading: Icon(Icons.grid_view_outlined),
                  title: Text("My Category ",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),),
                ),
                SizedBox(height: 30,),
                ListTile(
                  tileColor: Color(0xffF5F5F5),
                  leading: Icon(Icons.info_outline),
                  title: Text("About",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Divider(
            height: 2,
            color: Color(0xff2124491A),
          ),

        ],
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
