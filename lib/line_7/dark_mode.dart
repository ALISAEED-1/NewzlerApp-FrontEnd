import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkModeDemo extends StatefulWidget {
  const DarkModeDemo({super.key});

  @override
  State<DarkModeDemo> createState() => _DarkModeDemoState();
}

class _DarkModeDemoState extends State<DarkModeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/dark.png'),

          Expanded(
            child: Container(
              color: Colors.black,
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

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,right: 30),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            width: 10,
                            height: 120,
                            color: Colors.red,
                            
                            child: Column(
                              children: [
                              ],
                            ),
                          ),
                        ),
                      ),
                      Text("Trump presidency's final\ndays: 'In his mind, he will\nnot have lost'",style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),)
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 75),
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xffB2B2B2)
                    ),),
                  ),

                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.thumb_up_alt_outlined,color: Color(0xffFFFFFF),),
                      Icon(Icons.bookmark_outline_sharp,color: Color(0xffFFFFFF),),
                      Icon(Icons.copy,color: Color(0xffFFFFFF),),
                      Icon(Icons.share_outlined,color: Color(0xffFFFFFF),),
                    ],
                  ),

                  SizedBox(height: 30,),
                  Container(
                    width: 300,
                    height: 50,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), // match button radius
                    ),

                    child: ElevatedButton(onPressed: (){
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffBB1F19),

                        ),
                        child:
                        Text("Read the full story",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xffFFFFFF),
                        ),)),
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
