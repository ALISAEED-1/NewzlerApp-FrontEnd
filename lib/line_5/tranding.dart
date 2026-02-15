import 'package:flutter/material.dart';
import 'package:front_end_project/line_5/login_signup.dart';
import 'package:front_end_project/sign_in.dart';
import 'package:front_end_project/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

class TrandingDemo extends StatefulWidget {
  const TrandingDemo({super.key});

  @override
  State<TrandingDemo> createState() => _TrandingDemoState();
}

class _TrandingDemoState extends State<TrandingDemo> {

  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          "Trending",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              ),
                              builder: (context) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                  child: SizedBox(
                                    height: 200,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "React",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              children: [
                                                Image.asset('assets/images/thumbsup.png', width: 40, height: 40),
                                                Text("Like", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Image.asset('assets/images/Smiling face.png', width: 40, height: 40),
                                                Text("Love", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Image.asset('assets/images/Smily.png', width: 40, height: 40),
                                                Text("Haha", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Image.asset('assets/images/Star-struck.png', width: 40, height: 40),
                                                Text("Wow", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Image.asset('assets/images/Pensive face.png', width: 40, height: 40),
                                                Text("Sad", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Image.asset('assets/images/Pouting face.png', width: 40, height: 40),
                                                Text("Angry", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          icon: const Icon(Icons.thumb_up_alt_outlined),
                        ),


                        IconButton(onPressed: (){

                         setState(() {
                           isBookmarked = !isBookmarked;
                         });

                        }, icon: Icon(Icons.bookmark_outline_sharp,color: isBookmarked?Color(0xff209CEE):Color(0xff323232),)),
                        IconButton(
                          icon: Icon(Icons.copy),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              ),
                              builder: (BuildContext context) {
                                return Container(
                                  padding: const EdgeInsets.all(20),
                                  height: 300,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Whoops!",style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),textAlign: TextAlign.center),
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Text("Create an account or log in to Newzler to continue.",style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),textAlign: TextAlign.center),

                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [


                                          SizedBox(
                                            width: 120,
                                            height: 40,
                                            child: ElevatedButton(onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInDemo()));
                                            },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Color(0xff209CEE),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),



                                                ),
                                                child:
                                                Text("LOGIN",style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                  color: Color(0xffFFFFFF),
                                                ),)),
                                          ),

                                          SizedBox(
                                            width: 120,
                                            height: 40,
                                            child: ElevatedButton(onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpDemo()));
                                            },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Color(0xffFFFFFF),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      side: BorderSide(
                                                        color: Color(0xff979797),
                                                        width: 2,
                                                      )
                                                  ),

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
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),

                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              ),
                              builder: (context) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                  child: SizedBox(
                                    height: 200,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Share",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Image.asset('assets/images/WhatsApp.png', width: 40, height: 40),
                                                  Text("Like", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                                ],
                                              ),
                                              SizedBox(width: 30,),
                                              Column(
                                                children: [
                                                  Image.asset('assets/images/Twitter.png', width: 40, height: 40),
                                                  Text("Love", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                                ],
                                              ),
                                              SizedBox(width: 30,),
                                              Column(
                                                children: [
                                                  Image.asset('assets/images/Facebook.png', width: 40, height: 40),
                                                  Text("Haha", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                                ],
                                              ),
                                              SizedBox(width: 30,),
                                              Column(
                                                children: [
                                                  Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                          
                                                      Image.asset('assets/images/redbackground.png', width: 40, height: 40),
                                                      Image.asset('assets/images/youtube.png', width: 30, height: 30),
                                                    ],
                                                  ),
                                                  Text("Wow", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                                ],
                                              ),
                                              SizedBox(width: 30,),
                                              Column(
                                                children: [
                                                 Stack(
                                                   alignment: Alignment.center,
                                                   children: [
                                                     Image.asset('assets/images/GREY_backgroung.png', width: 40, height: 40),
                                                     Image.asset('assets/images/copy.png', width: 20, height: 20),
                                                   ],
                                                 ),
                                                  Text("Sad", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                                ],
                                              ),
                                              SizedBox(width: 30,),
                                              Column(
                                                children: [
                                                  Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Image.asset('assets/images/GREY_backgroung.png', width: 40, height: 40),
                                                      Image.asset('assets/images/Vector.png', width: 20, height: 20),
                                                    ],
                                                  ),
                                          
                                                  Text("Angry", style: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.w500)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          icon: const Icon(Icons.share_outlined),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),
            Divider(
              height: 5,
              thickness: 1,
              color: const Color(0xffE0E0E0),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Column(
                  children: [
                    Image.asset('assets/images/konstas.png'),
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
            )
          ],
        ),
      ),


    );
  }
}
