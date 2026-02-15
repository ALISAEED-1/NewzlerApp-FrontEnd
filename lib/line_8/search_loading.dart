import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchLoadingDemo extends StatefulWidget {
  const SearchLoadingDemo({super.key});

  @override
  State<SearchLoadingDemo> createState() => _SearchLoadingDemoState();
}

class _SearchLoadingDemoState extends State<SearchLoadingDemo> {
  List<int> selectedindex = [];

  // Use a map of publisher name and image path
  List<Map<String, String>> publishers = [
    {"name": "All Publishers", "image": "assets/images/Group 309.png"},
    {"name": "News Nation", "image": "assets/images/Group 311.png"},
    {"name": "Times Of India", "image": "assets/images/Group 312.png"},
    {"name": "News Nation", "image": "assets/images/Group 313.png"},
    {"name": "Gadgets Now", "image": "assets/images/Group314.png"},
    {"name": "India Today", "image": "assets/images/Group 315.png"},
    {"name": "Swirlster", "image": "assets/images/Group 310.png"},
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
          "My Publisher",
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,

      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('assets/images/Ellipse 2.25.png',width: 10,height: 10,fit:BoxFit.cover,),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.grey.shade300,
              ),
            ),
          ),

          // Subtitle
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Customize news across all categories",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
          ),

          const SizedBox(height: 30),

          // Publisher list
          Expanded(
            child: ListView.separated(
              itemCount: publishers.length,
              separatorBuilder: (context, index) => Column(
                children: [
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                    height: 1,
                  ),
                  SizedBox(height: 20,),
                ],
              ),
              itemBuilder: (context, i) {
                final isSelected = selectedindex.contains(i);
                return ListTile(
                  leading: Image.asset(
                    publishers[i]["image"]!,
                    width:40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    publishers[i]["name"]!,
                    style: GoogleFonts.poppins(fontSize: 16),
                  ),
                  trailing: Icon(
                    isSelected ? Icons.check_circle : Icons.check_circle_outline,
                    color: isSelected ? Colors.blue : Colors.grey,
                  ),
                  onTap: () => toggleSelection(i),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                );

              },
            ),
          ),
        ],
      ),
    );
  }
}
