import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoLiveNew3Demo extends StatefulWidget {
  const VideoLiveNew3Demo({super.key});

  @override
  State<VideoLiveNew3Demo> createState() => _VideoLiveNew3DemoState();
}

class _VideoLiveNew3DemoState extends State<VideoLiveNew3Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Stack(
                children: [
                  Image.asset('assets/images/US President Donald Trump.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon:Icon(Icons.arrow_back,color: Color(0xffFFFFFF),size: 40,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Center(child: Image.asset('assets/images/play.png',width: 60,height: 60,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 250),
                    child: Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Text("01:17",style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),),
                          SizedBox(width: 20,),
                          Image.asset('assets/images/linebar.png',width: 250,),
                          SizedBox(width: 10,),
                          Text("01:17",style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),),
                          SizedBox(width: 10,),
                          Image.asset('assets/images/full-screen.1 1.png',width: 20,height: 20,),
                        ],
                      ),
                    ),
                  )
        
                ],
              ),
            ),
        
        
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Text("Trump presidency's final days: 'In his mind, he will not have lost'",style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined,size: 30,color: Color(0xff707070),),
                      Text("1h | US & Canada",style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                          color: Color(0xff707070),
                      ),)
                    ],
                  ),
                ],
              ),
            ),
            
            Divider(
              height: 5,
              color: Color(0xff2124491A),
            ),
        
            Padding(
              padding: const EdgeInsets.all(18),
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/images/电影海报图片 1.png',width: 40,height: 40,)),
                title: Text("News18",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),),
        
              ),
            ),
        
            Divider(
              height: 5,
              color: Color(0xff2124491A),
            ),
        
           Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/Group 19 (1).png',
                            width: 170,   // increase image size
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Meet the woman behind India's best bar",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 35),
                              Text(
                                "4 minutes ago  |   Rebecca Cairns",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/Group 19 (2).png',
                            width: 170,   // increase image size
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Can Formula One's team bounce back in 2021? ",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Text(
                                "4 minutes ago | Calum Trenaman",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
        
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/Group 19 (3).png',
                            width: 170,   // increase image size
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tucker Carlson's vaccine rant should be called out",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Text(
                                "4 minutes ago  |   Calum Trenaman",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/Group 19 (3).png',
                            width: 170,   // increase image size
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tucker Carlson's vaccine rant should be called out",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Text(
                                "4 minutes ago  |   Calum Trenaman",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}
