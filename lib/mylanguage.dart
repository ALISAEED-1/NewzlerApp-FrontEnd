import 'package:flutter/material.dart';
import 'package:front_end_project/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MylanguageDemo extends StatefulWidget {
  const MylanguageDemo({super.key});

  @override
  State<MylanguageDemo> createState() => _MylanguageDemoState();
}

class _MylanguageDemoState extends State<MylanguageDemo> {
  List<int> selectedindex = [];
  List<String> languages = [
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

  void toggleSelection(int i) {
    setState(() {
      if (selectedindex.contains(i)) {
        selectedindex.remove(i); // unselect
      } else {
        selectedindex.add(i); // select
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: Text(
          "MY LANGUAGE",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreenDemo()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff209CEE),
                ),
                child: Text(
                  "DONE",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // search bar
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'SEARCH',
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

          // full line divider
          Divider(
            color: Colors.grey.shade400,
            thickness: 1,
            height: 1,
          ),

          // language list
          Expanded(
            child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, i) {
                final isSelected = selectedindex.contains(i);

                return Column(
                  children: [
                    ListTile(
                      title: Text(languages[i]),
                      trailing: Icon(
                        isSelected
                            ? Icons.check_circle
                            : Icons.check_circle_outline,
                        color: isSelected ? Colors.blue : Colors.grey,
                      ),
                      onTap: () => toggleSelection(i),
                    ),

                    // shorter divider under each tile
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                        height: 1,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
