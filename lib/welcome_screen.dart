import 'package:flutter/material.dart';
import 'package:front_end_project/line_2/account_1.dart';
import 'package:front_end_project/onboarding_2.dart';
import 'package:google_fonts/google_fonts.dart';

import 'initial_page.dart';
class WelcomeScreenDemo extends StatefulWidget {
  const WelcomeScreenDemo({super.key});

  @override
  State<WelcomeScreenDemo> createState() => _WelcomeScreenDemoState();
}

class _WelcomeScreenDemoState extends State<WelcomeScreenDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/Welcome-cuate (1) 1.png"),

          SizedBox(height: 100,),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome, Darrell",style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xff209CEE),

                  ),),
                  Text("Enjoy our best\nnews engine\nexperience ever.",style: GoogleFonts.poppins(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff1E1A15),
                  )),
                  SizedBox(height: 10,),
                  Container(

                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.4), // shadow color
                          blurRadius: 12, // softness of shadow
                          offset: const Offset(0, 7), // X, Y position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12), // match button radius
                    ),

                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RootPage()));
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff209CEE),

                        ),
                        child:
                        Text("Let’s Start",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xffFFFFFF),
                        ),)),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
