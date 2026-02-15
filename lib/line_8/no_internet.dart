import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoInternetDemo extends StatefulWidget {
  const NoInternetDemo({super.key});

  @override
  State<NoInternetDemo> createState() => _NoInternetDemoState();
}

class _NoInternetDemoState extends State<NoInternetDemo> {
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
          Text("Please check your internet",style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),),


          SizedBox(height: 230,),
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
                "Refresh",
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
