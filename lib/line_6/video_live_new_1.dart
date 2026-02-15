import 'package:flutter/material.dart';
import 'package:front_end_project/initial_page.dart';
import 'package:front_end_project/line_7/home_1.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoLiveNew1Demo extends StatefulWidget {
  const VideoLiveNew1Demo({super.key});

  @override
  State<VideoLiveNew1Demo> createState() => _VideoLiveNew1DemoState();
}

class _VideoLiveNew1DemoState extends State<VideoLiveNew1Demo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>RootPage()));
        }, icon:Icon(Icons.arrow_back_ios)
        ),
        title: Text(
          "Video",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              height: 5,
              thickness: 1,
              color: const Color(0xffE0E0E0),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [


                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Live News",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(

                      children: [
                        Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/images/zeenews.png', width: 40, height: 40)),
                            Text("Zee News", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        SizedBox(width: 45,),
                        Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/images/indiatv.png', width: 40, height: 40)),
                            Text("IndiaTv", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        SizedBox(width: 45,),
                        Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/images/ajjtk.png', width: 40, height: 40)),
                            Text("Aaj Tak", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        SizedBox(width: 45,),
                        Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/images/todaynews.png', width: 40, height: 40)),
                            Text("India Today", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                          ],
                        ),
                        SizedBox(width: 45,),
                        Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/images/newsnation.png', width: 40, height: 40)),
                            Text("ABP Live", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Recommend",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),),
                    ],
                  ),
                  SizedBox(height: 20,),
                   Container(
                      child: Column(
                        children: [
                          Image.asset('assets/images/line_61.png'),
                          ListTile(
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset('assets/images/电影海报图片 1.png',width: 40,height: 40,)),
                            title: Text("The fate of millions of Americans rests on Biden's economic team",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),),
                            subtitle: Text("5 hours ago    |     News18",style: GoogleFonts.poppins(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),

                        ],
                      ),
                    ),


                  SizedBox(height: 10,),
                  Divider(
                    height: 5,
                    thickness: 1,
                    color: const Color(0xffE0E0E0),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    child: Column(
                      children: [
                        Image.asset('assets/images/line_62.png'),
                        ListTile(
                          leading: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset('assets/images/电影海报图片 1.png',width: 40,height: 40,)),
                          title: Text("The fate of millions of Americans rests on Biden's economic team",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),),
                          subtitle: Text("5 hours ago    |     News18",style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
                  Divider(
                    height: 5,
                    thickness: 1,
                    color: const Color(0xffE0E0E0),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    child: Column(
                      children: [
                        Image.asset('assets/images/line_63.png'),
                        ListTile(
                          leading: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset('assets/images/电影海报图片 1.png',width: 40,height: 40,)),
                          title: Text("The fate of millions of Americans rests on Biden's economic team",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),),
                          subtitle: Text("5 hours ago    |     News18",style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
