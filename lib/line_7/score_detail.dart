import 'package:flutter/material.dart';
import 'package:front_end_project/initial_page.dart';
import 'package:front_end_project/line_7/home_1.dart';
import 'package:google_fonts/google_fonts.dart';
class ScoreDetailDemo extends StatefulWidget {
  const ScoreDetailDemo({super.key});

  @override
  State<ScoreDetailDemo> createState() => _ScoreDetailDemoState();
}

class _ScoreDetailDemoState extends State<ScoreDetailDemo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,   // outline color
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Icon(Icons.arrow_back,size: 30,),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RootPage()),
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,   // outline color
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Icon(Icons.clear,size: 30,),
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.circle, color: Color(0xff2BA83F), size: 15),
                const SizedBox(width: 4),
                Text("Live", style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff2BA83F),
                )),
              ],
            ),

            SizedBox(height: 30,),

            Text("India V/S Australia\n2nd Test",style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),),

            Padding(
              padding: const EdgeInsets.only(right: 55),
              child: Text("2nd Test, India tour of Australia\nMelbourne Cricket Ground, Australia",style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xff6B6E74),
              ),),
            ),

            Container(
              width: 500,
              padding: const EdgeInsets.all(12), // spacing inside

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // ✅ keeps spacing balanced
                    crossAxisAlignment: CrossAxisAlignment.start, // align to top
                    children: [
                      // 🔹 Left Column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset('assets/images/india.png', width: 80, height: 80),
                          ),

                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                Text("India", style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff1A1A1A),
                                )),
                                const SizedBox(width: 4),
                                const Icon(Icons.circle, color: Color(0xffDD0000), size: 8),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("36/1 (11 ov)", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff1A1A1A),
                            )),
                          ),
                        ],
                      ),

                      // 🔹 Middle Text
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text("V/S", style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                      ),

                      // 🔹 Right Column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          const SizedBox(height: 4),
                          Image.asset('assets/images/australia.png', width: 80, height: 80),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("Australia", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff1A1A1A),
                            )),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text("195", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff1A1A1A),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("India won by 5 wickets", style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff6B6E74),
                      )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("PLAYER OF THE MATCH",style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff6B6E74),
                  ),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/rahane.png')),
              title: Text("Ajinkya Rahane",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: Color(0xff6B6E74),
              ),),
              subtitle: Text("india",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 10,
                color: Color(0xff6B6E74),
              ),),
            ),








            SizedBox(height: 80,),
            Container(
              width: 300,
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
                  Text("Read the full scoreboard",style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xffFFFFFF),
                  ),)),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Powered By",
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "ESPNcricinfo",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: const Color(0xff209CEE),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff209CEE),
                    ),
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
