import 'package:flutter/material.dart';
import 'package:front_end_project/line_6/video_live_new_3.dart';
import 'package:front_end_project/line_7/cricket_score.dart';
import 'package:front_end_project/line_7/dark_mode.dart';
import 'package:google_fonts/google_fonts.dart';

class Home1Demo extends StatefulWidget {
  const Home1Demo({super.key});

  @override
  State<Home1Demo> createState() => _Home1DemoState();
}

class _Home1DemoState extends State<Home1Demo> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // number of tabs
      child: Scaffold(
        body:
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 580,
                    child: Stack(
                      children: [
                        // Background image
                        Image.asset(
                          'assets/images/Donald Trumps Most.png',
                          width: double.infinity,
              
                        ),
              
                        // Foreground content
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 60), // status bar spacing
              
                            // ✅ TabBar inside the Stack (like in screenshot)
                            TabBar(
                              isScrollable: true,
                              indicatorColor: const Color(0xff209CEE),
                              labelColor: const Color(0xff209CEE),
                              unselectedLabelColor: const Color(0xffFFFFFFE5),
                              dividerColor: Colors.transparent,
                              indicator: UnderlineTabIndicator(
                                borderSide: const BorderSide(
                                  width: 4.0, // thickness of line
                                  color: Color(0xff209CEE),
                                ),
                                insets: const EdgeInsets.symmetric(
                                  horizontal: 10, // makes line shorter & centered
                                ),
                              ),
                              tabs: const [
                                Tab(text: 'My News'),
                                Tab(text: 'World'),
                                Tab(text: 'Business'),
                                Tab(text: 'HEALTH'),
                                Tab(text: 'TRAVEL'),
                              ],
                            ),
              
                            // ✅ Content that changes with tabs
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,top: 240),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              leading: ClipRRect(
                                                  borderRadius: BorderRadius.circular(30),
                                                  child: Image.asset('assets/images/电影海报图片 1.png',width: 40,height: 40,)),
                                              title: Text("News18",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                  color: Color(0xffFFFFFF),
                                                ),),
                                              subtitle:Text("1h | US & Canada",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                  color: Color(0xffFFFFFF),
                                                ),) ,
              
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Text("Trump presidency's final days: 'In his mind, he will not have lost'",style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Color(0xffFFFFFF),
                                              ),),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(Icons.thumb_up_alt_outlined,color: Color(0xffFFFFFF),),
                                                Icon(Icons.bookmark_outline_sharp,color: Color(0xffFFFFFF),),
                                                Icon(Icons.copy,color: Color(0xffFFFFFF),),
                                                Icon(Icons.share_outlined,color: Color(0xffFFFFFF),),
                                              ],
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Image.asset('assets/images/slider.png',width: 50,height: 50,),
                                                SizedBox(width: 100,),
                                                Text("View all",style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Color(0xff209CEE),
                                                ),),
                                                Icon(Icons.arrow_forward, color:  Color(0xff209CEE),)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                  ),
                                  Center(
                                      child:  Padding(
                                        padding: const EdgeInsets.only(top: 240,left: 20,),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              leading: ClipRRect(
                                                  borderRadius: BorderRadius.circular(30),
                                                  child: Image.asset('assets/images/电影海报图片 1.png',width: 40,height: 40,)),
                                              title: Text("News18",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                  color: Color(0xffFFFFFF),
                                                ),),
                                              subtitle:Text("1h | US & Canada",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                  color: Color(0xffFFFFFF),
                                                ),) ,

                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Text("Trump presidency's final days: 'In his mind, he will not have lost'",style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Color(0xffFFFFFF),
                                              ),),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(Icons.thumb_up_alt_outlined,color: Color(0xffFFFFFF),),
                                                Icon(Icons.bookmark_outline_sharp,color: Color(0xffFFFFFF),),
                                                Icon(Icons.copy,color: Color(0xffFFFFFF),),
                                                Icon(Icons.share_outlined,color: Color(0xffFFFFFF),),
                                              ],
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Image.asset('assets/images/slider.png',width: 50,height: 50,),
                                                SizedBox(width: 100,),
                                                Text("View all",style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Color(0xff209CEE),
                                                ),),
                                                Icon(Icons.arrow_forward, color:  Color(0xff209CEE),)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                  ),
                                  Center(
                                      child:  Padding(
                                        padding: const EdgeInsets.only(top: 240,left: 20),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              leading: ClipRRect(
                                                  borderRadius: BorderRadius.circular(30),
                                                  child: Image.asset('assets/images/电影海报图片 1.png',width: 40,height: 40,)),
                                              title: Text("News18",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                  color: Color(0xffFFFFFF),
                                                ),),
                                              subtitle:Text("1h | US & Canada",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                  color: Color(0xffFFFFFF),
                                                ),) ,
              
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Text("Trump presidency's final days: 'In his mind, he will not have lost'",style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Color(0xffFFFFFF),
                                              ),),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(Icons.thumb_up_alt_outlined,color: Color(0xffFFFFFF),),
                                                Icon(Icons.bookmark_outline_sharp,color: Color(0xffFFFFFF),),
                                                Icon(Icons.copy,color: Color(0xffFFFFFF),),
                                                Icon(Icons.share_outlined,color: Color(0xffFFFFFF),),
                                              ],
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Image.asset('assets/images/slider.png',width: 50,height: 50,),
                                                SizedBox(width: 100,),
                                                Text("View all",style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Color(0xff209CEE),
                                                ),),
                                                Icon(Icons.arrow_forward, color:  Color(0xff209CEE),)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                  ),
                                  Center(
                                      child:  Padding(
                                        padding: const EdgeInsets.only(top: 240,left: 20),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              leading: ClipRRect(
                                                  borderRadius: BorderRadius.circular(30),
                                                  child: Image.asset('assets/images/电影海报图片 1.png',width: 40,height: 40,)),
                                              title: Text("News18",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                  color: Color(0xffFFFFFF),
                                                ),),
                                              subtitle:Text("1h | US & Canada",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                  color: Color(0xffFFFFFF),
                                                ),) ,
              
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Text("Trump presidency's final days: 'In his mind, he will not have lost'",style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Color(0xffFFFFFF),
                                              ),),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(Icons.thumb_up_alt_outlined,color: Color(0xffFFFFFF),),
                                                Icon(Icons.bookmark_outline_sharp,color: Color(0xffFFFFFF),),
                                                Icon(Icons.copy,color: Color(0xffFFFFFF),),
                                                Icon(Icons.share_outlined,color: Color(0xffFFFFFF),),
                                              ],
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Image.asset('assets/images/slider.png',width: 50,height: 50,),
                                                SizedBox(width: 100,),
                                                Text("View all",style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Color(0xff209CEE),
                                                ),),
                                                Icon(Icons.arrow_forward, color:  Color(0xff209CEE),)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                  ),
                                  Center(
                                      child:  Padding(
                                        padding: const EdgeInsets.only(top: 240,left: 20),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              leading: ClipRRect(
                                                  borderRadius: BorderRadius.circular(30),
                                                  child: Image.asset('assets/images/电影海报图片 1.png',width: 40,height: 40,)),
                                              title: Text("News18",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                  color: Color(0xffFFFFFF),
                                                ),),
                                              subtitle:Text("1h | US & Canada",
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                  color: Color(0xffFFFFFF),
                                                ),) ,
              
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Text("Trump presidency's final days: 'In his mind, he will not have lost'",style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Color(0xffFFFFFF),
                                              ),),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(Icons.thumb_up_alt_outlined,color: Color(0xffFFFFFF),),
                                                Icon(Icons.bookmark_outline_sharp,color: Color(0xffFFFFFF),),
                                                Icon(Icons.copy,color: Color(0xffFFFFFF),),
                                                Icon(Icons.share_outlined,color: Color(0xffFFFFFF),),
                                              ],
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Image.asset('assets/images/slider.png',width: 50,height: 50,),
                                                SizedBox(width: 100,),
                                                Text("View all",style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Color(0xff209CEE),
                                                ),),
                                                Icon(Icons.arrow_forward, color:  Color(0xff209CEE),)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), 
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        Text("Trending",style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                         ),),
                        ],
                       ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VideoLiveNew3Demo()),
                          );

                      },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                          ),
                          child: Text("Trending-1")),
                      ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CricketScoreDemo()),
                        );
                      },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          ),
                          child: Text("Trending-2")),
                      ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DarkModeDemo()),
                        );
                      },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          ),
                          child: Text("Trending-3")),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("My News",style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset('assets/images/Group 330.png'),
                          ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/images/电影海报图片 1.png',width: 40,height: 40,)),
                            title: Text("A protester carries the Confederate flag after breaching US Capitol security",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),),
                            subtitle: Text("5 hours ago    |     News18",style: GoogleFonts.poppins(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.thumb_up_alt_outlined),
                              Icon(Icons.bookmark_outline_sharp),
                              Icon(Icons.copy),
                              Icon(Icons.share_outlined),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),


      ),
    );
  }
}
