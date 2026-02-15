import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateAvailableDemo extends StatefulWidget {
  const UpdateAvailableDemo({super.key});

  @override
  State<UpdateAvailableDemo> createState() => _UpdateAvailableDemoState();
}

class _UpdateAvailableDemoState extends State<UpdateAvailableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          // SizedBox(height: 10,),
          // Divider(
          //   height: 5,
          //   thickness: 1,
          //   color: const Color(0xffE0E0E0),
          // ),
          // SizedBox(height: 20,),

          Image.asset('assets/images/404 page 1 (1).png'),
          SizedBox(height: 100,),
          Text("No news has been found",style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
            child: Text("An update is available with new features, a faster experience, fixes and more. It typically takes less than a minute.",style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),textAlign: TextAlign.center,),
          ),

          SizedBox(height: 150,),
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Row(
              children: [


                Container(
                  width: 130,
                  height: 50,

                  child: ElevatedButton(onPressed: (){
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFFFFF),

                      ),
                      child:
                      Text("Not Now",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black,
                      ),)),
                ),

                SizedBox(width: 37,),

                Container(
                  width: 130,
                  height: 50,
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
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff209CEE),

                      ),
                      child:
                      Text("Update",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Color(0xffFFFFFF),
                      ),)),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
