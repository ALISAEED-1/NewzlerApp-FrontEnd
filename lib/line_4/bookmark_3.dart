import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookmark3Demo extends StatefulWidget {
  const Bookmark3Demo({super.key});

  @override
  State<Bookmark3Demo> createState() => _Bookmark3DemoState();
}

class _Bookmark3DemoState extends State<Bookmark3Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: Text(
          "My Bookmark",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Divider(
            height: 5,
            thickness: 1,
            color: const Color(0xffE0E0E0),
          ),
          
          Image.asset('assets/images/Work scene illustration Pack-08 1.png'),
          SizedBox(height: 10,),
          Text("Your bookshelf has no news", style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),)

        ],
      ),
    );
  }
}
