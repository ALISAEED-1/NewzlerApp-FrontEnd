import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search3Demo extends StatefulWidget {
  const Search3Demo({super.key});

  @override
  State<Search3Demo> createState() => _Search3DemoState();
}

class _Search3DemoState extends State<Search3Demo> {


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
        
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Column(
                  children: [
                    Image.asset('assets/images/konstas.png'),
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

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Column(
                  children: [
                    Image.asset('assets/images/konstas.png'),
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

            Text("That's all we have.",style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),textAlign: TextAlign.center),

          ],
        ),
      ),



    );
  }
}
