import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MaintanenceDemo extends StatefulWidget {
  const MaintanenceDemo({super.key});

  @override
  State<MaintanenceDemo> createState() => _MaintanenceDemoState();
}

class _MaintanenceDemoState extends State<MaintanenceDemo> {
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
            child: Text("We apologies for any inconvenience.\nWe will be right back.",style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),textAlign: TextAlign.center,),
          ),

          SizedBox(height: 150,),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.4),
                  blurRadius: 12,
                  offset: const Offset(0, 7),
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff209CEE),
              ),
              child: Text(
                "Close",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: const Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
