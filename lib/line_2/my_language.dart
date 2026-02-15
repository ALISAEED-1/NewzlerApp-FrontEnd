import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MylanguageLine2Demo extends StatefulWidget {
  const MylanguageLine2Demo({super.key});

  @override
  State<MylanguageLine2Demo> createState() => _MylanguageLine2DemoState();
}

class _MylanguageLine2DemoState extends State<MylanguageLine2Demo> {
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
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios)
        ),
        title: Text(
          "MY LANGUAGE",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,

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
