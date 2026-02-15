import 'package:flutter/material.dart';
import 'package:front_end_project/initial_page.dart';
import 'package:front_end_project/line_2/my_category.dart';
import 'package:front_end_project/line_2/my_language.dart';
import 'package:front_end_project/line_2/my_publisher.dart';
import 'package:front_end_project/line_2/notification_1.dart';
import 'package:front_end_project/line_2/setting_screen.dart';
import 'package:front_end_project/line_2/theme_2.dart';
import 'package:front_end_project/line_4/bookmark_1.dart';
import 'package:front_end_project/line_4/bookmark_2.dart';
import 'package:front_end_project/line_7/home_1.dart';
import 'package:google_fonts/google_fonts.dart';
class Account1Demo extends StatefulWidget {
  const Account1Demo({super.key});

  @override
  State<Account1Demo> createState() => _Account1DemoState();
}

class _Account1DemoState extends State<Account1Demo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>RootPage()));
        }, icon:Icon(Icons.arrow_back,),
        ),
        title: Text("ACCOUNT",style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color(0xff2124491A),width: 2),
                    bottom: BorderSide(color: Color(0xff2124491A),width: 2),
                  )
                ),
                child: ListTile(
                  leading: Image.asset('assets/images/profile.png'),
                  title:Row(
                    children: [
                      Text("Darrell Chan    ",style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),),
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreenDemo()));
                        
                      }, icon: Icon(Icons.arrow_circle_right_outlined ,color: Color(0xff209CEE),),)
                      
                    ],
                  ),
                  subtitle:  Text("abc123@example.com",style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notification1Demo()),
                      );
                    },
                  ),
                  SizedBox(height: 30,),
                  ListTile(
                    tileColor: Color(0xffF5F5F5),
                    leading: Icon(Icons.brightness_2_outlined),
                    title: Text("Theme",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Theme2Demo()),
                      );
                    },
                  ),
                  SizedBox(height: 30,),
                  ListTile(
                    tileColor: Color(0xffF5F5F5),
                    leading: Icon(Icons.bookmark_border),
                    title: Text("My Bookmark",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bookmark2Demo()),
                      );
                    },
                  ),
                  SizedBox(height: 30,),
                  ListTile(
                    tileColor: Color(0xffF5F5F5),
                    leading: Icon(Icons.article_outlined),
                    title: Text("My Publisher",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyPublisherDemo()),
                      );
                    },
                  ),
                  SizedBox(height: 30,),
                  ListTile(
                    tileColor: Color(0xffF5F5F5),
                    leading: Icon(Icons.language),
                    title: Text("My Language",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MylanguageLine2Demo()),
                      );
                    },
                  ),
                  SizedBox(height: 30,),
                  ListTile(
                    tileColor: Color(0xffF5F5F5),
                    leading: Icon(Icons.grid_view_outlined),
                    title: Text("My Category ",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyCategoryDemo()),
                      );
                    },
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
                  SizedBox(height: 30),
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

                  SizedBox(height: 30),
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

                  SizedBox(height: 30),
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

                  SizedBox(height: 30),
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
                  const SizedBox(height: 30),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: const Icon(Icons.facebook),
                    title: Text(
                      "RATE ON FACEBOOK",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: Image.asset('assets/images/Vectort.png',width:20 ,height: 20,),
                    title: Text(
                      "RATE ON TWITTER",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ListTile(
                    tileColor: const Color(0xffF5F5F5),
                    leading: Image.asset('assets/images/Group 356.png',width:20 ,height: 20,),
                    title: Text(
                      "RATE ON INSTAGRAM",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
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
      ),



    );
  }
}
