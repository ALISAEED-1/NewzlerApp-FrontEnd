import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSignupDemo extends StatefulWidget {
  const LoginSignupDemo({super.key});

  @override
  State<LoginSignupDemo> createState() => _LoginSignupDemoState();
}

class _LoginSignupDemoState extends State<LoginSignupDemo> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: Text(
          "Search",
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

            SizedBox(height: 10,),
            Divider(
              height: 5,
              thickness: 1,
              color: const Color(0xffE0E0E0),
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
      ),



    );
  }
}
