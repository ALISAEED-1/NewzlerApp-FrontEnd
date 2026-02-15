import 'package:flutter/material.dart';
import 'package:front_end_project/models/gridclass.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategoryDemo extends StatefulWidget {
  const MyCategoryDemo({super.key});

  @override
  State<MyCategoryDemo> createState() => _MyCategoryDemoState();
}

class _MyCategoryDemoState extends State<MyCategoryDemo> {
  List<int> selectedindex = [];
  List<gridclass> listpage = [
    gridclass(icon: Icons.grid_view_outlined, title: "ALL"),
    gridclass(icon: Icons.sunny_snowing, title: "WEATHER"),
    gridclass(icon: Icons.business, title: "Business"),
    gridclass(icon: Icons.movie, title: "Entmt"),
    gridclass(icon: Icons.public, title: "General"),
    gridclass(icon: Icons.health_and_safety, title: "Health"),
    gridclass(icon: Icons.style, title: "Lifestyle"),
    gridclass(icon: Icons.science, title: "Science"),
    gridclass(icon: Icons.sports_soccer, title: "Sports"),
    gridclass(icon: Icons.computer, title: "Tech"),
    gridclass(icon: Icons.public, title: "World"),
    gridclass(icon: Icons.fastfood, title: "Food"),
    gridclass(icon: Icons.flight, title: "Travel"),
    gridclass(icon: Icons.sports_esports, title: "Gaming"),
    gridclass(icon: Icons.agriculture, title: "Agriculture"),
    gridclass(icon: Icons.sentiment_very_dissatisfied, title: "Weird"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios)
        ),
        title: Text(
          "My Category ",
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 5),
          const Divider(
            height: 7,
            color: Color(0xff2124491A),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Customize “My News” category",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                mainAxisExtent: 50,
                crossAxisSpacing: 20,
              ),
              itemCount: listpage.length,
              itemBuilder: (context, i) {
                final isSelected = selectedindex.contains(i);
                return Container(
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xffE6F3FD) : const Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedindex.remove(i);
                        } else {
                          selectedindex.add(i);
                        }
                      });
                    },
                    iconColor: isSelected
                        ? const Color(0xff209CEE)
                        : const Color(0xff27272E),
                    textColor: isSelected
                        ? const Color(0xff209CEE)
                        : const Color(0xff27272E),
                    leading: Icon(listpage[i].icon),
                    title: Text(listpage[i].title),
                    trailing: Icon(
                      Icons.star,
                      color: isSelected
                          ? const Color(0xff209CEE)
                          : const Color(0xffC4C4C4),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
