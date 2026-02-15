import 'package:flutter/material.dart';
import 'package:front_end_project/mylanguage.dart';
import 'package:front_end_project/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingSelectDemo extends StatefulWidget {
  const OnboardingSelectDemo({super.key});

  @override
  State<OnboardingSelectDemo> createState() => _OnboardingSelectDemoState();
}

class _OnboardingSelectDemoState extends State<OnboardingSelectDemo> {
  String? selectedLanguage; // currently selected language

  final List<String> languages = [
    "ENGLISH",
    "বাংলা",
    "ગુજરાતી",
    "हिन्दी",
    "ಕನ್ನಡ",
    "മലയാളം",
    "मराठी",
    "தமிழ்",
    "తెలుగు"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/Work scene illustration Pack-07 2 (1).png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text("Which languages you prefer to read the news?",style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),textAlign: TextAlign.center,),
          ),


          SizedBox(height: 30,),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40), // same as ElevatedButton default
              border: Border.all(
                color: Colors.grey.shade400, // same border color
                width: 1,                    // same border thickness
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedLanguage,
                hint: Text(
                  "Language",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: const Color(0xff209CEE),
                  ),
                ),
                icon: Image.asset(
                  'assets/images/arrow-down-circle 2.png',
                  width: 25,
                  height: 25,
                ),
                isExpanded: true,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedLanguage = newValue;
                  });
                },
                items: languages.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),





          SizedBox(height: 190,),
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
            Text("SKIP",style: GoogleFonts.inter(
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreenDemo()));
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff209CEE),

                  ),
                  child:
                  Text("DONE",style: GoogleFonts.inter(
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
