import 'package:flutter/material.dart';
import 'package:front_end_project/line_7/score_detail.dart';
import 'package:google_fonts/google_fonts.dart';

class CricketScoreDemo extends StatefulWidget {
  const CricketScoreDemo({super.key});

  @override
  State<CricketScoreDemo> createState() => _CricketScoreDemoState();
}

class _CricketScoreDemoState extends State<CricketScoreDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
                padding: const EdgeInsets.only(top: 50,left: 30,right: 80,bottom: 680),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScoreDetailDemo()),
                        );
                      },

                      child: Container(
                        width: 300,
                      padding: const EdgeInsets.all(12), // spacing inside
                      decoration: BoxDecoration(
                      color: Colors.white, // background
                      borderRadius: BorderRadius.circular(25), // rounded corners
                      border: Border.all( // border side
                      color: Colors.grey.shade300,
                      width: 1,
                      ),
                      boxShadow: [ // shadow
                      BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                      ),
                      ],
                      ),
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
                              Text("2nd Test", style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff6B6E74),
                              )),

                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image.asset('assets/images/india.png', width: 30, height: 30),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
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
                              Text("36/1 (11 ov)", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff1A1A1A),
                              )),
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
                              Row(
                              children: [
                              const Icon(Icons.circle, color: Color(0xff2BA83F), size: 8),
                              const SizedBox(width: 4),
                              Text("Live", style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff2BA83F),
                              )),
                              ],
                              ),
                              const SizedBox(height: 4),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Image.asset('assets/images/australia.png', width: 30, height: 30),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Text("Australia", style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff1A1A1A),
                                )),
                              ),
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
                              SizedBox(height: 4),
                              Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("India won by 5 wickets", style: GoogleFonts.poppins(
                              fontSize: 13,
                               fontWeight: FontWeight.w400,
                               color: const Color(0xff1A1A1A),
                         )),
                      ],
                              ),
                        ],
                      ),
                      ),
                    ),

                    SizedBox(width: 50,),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScoreDetailDemo()),
                        );
                      },
                      child: Container(
                        width: 300,
                        padding: const EdgeInsets.all(12), // spacing inside
                        decoration: BoxDecoration(
                          color: Colors.white, // background
                          borderRadius: BorderRadius.circular(25), // rounded corners
                          border: Border.all( // border side
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                          boxShadow: [ // shadow
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
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
                                    Text("2nd Test", style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff6B6E74),
                                    )),

                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image.asset('assets/images/india.png', width: 30, height: 30),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
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
                                    Text("36/1 (11 ov)", style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff1A1A1A),
                                    )),
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
                                    Row(
                                      children: [
                                        const Icon(Icons.circle, color: Color(0xff2BA83F), size: 8),
                                        const SizedBox(width: 4),
                                        Text("Live", style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff2BA83F),
                                        )),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Image.asset('assets/images/australia.png', width: 30, height: 30),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text("Australia", style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff1A1A1A),
                                      )),
                                    ),
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
                            SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("India won by 5 wickets", style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff1A1A1A),
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 50,),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScoreDetailDemo()),
                        );
                      },

                      child: Container(
                        width: 300,
                        padding: const EdgeInsets.all(12), // spacing inside
                        decoration: BoxDecoration(
                          color: Colors.white, // background
                          borderRadius: BorderRadius.circular(25), // rounded corners
                          border: Border.all( // border side
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                          boxShadow: [ // shadow
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
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
                                    Text("2nd Test", style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff6B6E74),
                                    )),

                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Image.asset('assets/images/india.png', width: 30, height: 30),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
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
                                    Text("36/1 (11 ov)", style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff1A1A1A),
                                    )),
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
                                    Row(
                                      children: [
                                        const Icon(Icons.circle, color: Color(0xff2BA83F), size: 8),
                                        const SizedBox(width: 4),
                                        Text("Live", style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff2BA83F),
                                        )),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Image.asset('assets/images/australia.png', width: 30, height: 30),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text("Australia", style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff1A1A1A),
                                      )),
                                    ),
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
                            SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("India won by 5 wickets", style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff1A1A1A),
                                )),
                              ],
                            ),
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
