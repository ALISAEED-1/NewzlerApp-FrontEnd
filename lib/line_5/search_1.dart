import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search1Demo extends StatefulWidget {
  const Search1Demo({super.key});

  @override
  State<Search1Demo> createState() => _Search1DemoState();
}

class _Search1DemoState extends State<Search1Demo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20, top:  60),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                suffixIcon: const Icon(Icons.cancel_rounded, color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.grey.shade300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ListTile(
              title: Text("Recent Searches", style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),),
              trailing: Icon(Icons.delete_outline_sharp),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(

              children: [
                Container(
                  width: 80,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Biden", style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: Color(0xff209CEE),

                  ),),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 130,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Anderson Cooper", style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: Color(0xff209CEE),

                  ),),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 80,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Trump", style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                    color: Color(0xff209CEE),

                  ),),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Divider(
            height: 5,
            thickness: 1,
            color: const Color(0xffE0E0E0),
          ),
          
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ListTile(
              leading: Icon(Icons.trending_up),
              title: Text("Trending", style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),),
             
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text("Anbazhangan",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
                SizedBox(width: 122,),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 1,
                  height: 25, // taller than text
                  color: Color(0xffDADADA),
                ),

                Text("Biden",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text("Chanels",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),

                SizedBox(width: 165,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 1,
                  height: 25, // taller than text
                  color: Color(0xffDADADA),
                ),
                Text(" Isha",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text("Malayalam",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
                SizedBox(width: 143,),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 1,
                  height: 25, // taller than text
                  color: Color(0xffDADADA),
                ),

                Text("Women’s Day",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
