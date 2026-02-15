import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Line404Demo extends StatefulWidget {
  const Line404Demo({super.key});

  @override
  State<Line404Demo> createState() => _Line404DemoState();
}

class _Line404DemoState extends State<Line404Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Search",style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Divider(
            height: 5,
            thickness: 1,
            color: const Color(0xffE0E0E0),
          ),
          SizedBox(height: 20,),

          Image.asset('assets/images/Scenes.png'),
          SizedBox(height: 150,),
          Text("No news has been found",style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),)
        ],
      ),
    );
  }
}
