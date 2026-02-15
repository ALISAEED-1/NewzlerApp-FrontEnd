import 'package:flutter/material.dart';
import 'package:front_end_project/line_4/bookmark_1.dart';
import 'package:front_end_project/line_4/bookmark_3.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookmark2Demo extends StatefulWidget {
  const Bookmark2Demo({super.key});

  @override
  State<Bookmark2Demo> createState() => _Bookmark2DemoState();
}

class _Bookmark2DemoState extends State<Bookmark2Demo> {
  bool selectionMode = false;
  List<Map<String, String>> items = [
    {
      "title":
      "Covid: Dr Scott Atlas - Trump's controversial coronavirus adviser resigns",
      "subtitle": "4 minutes ago  |   US & Canada",
      "image": "assets/images/US.png"
    },
    {
      "title": "UNS 1st December 1945 - Singer Bette Midler",
      "subtitle": "4 minutes ago  |   US & Canada",
      "image": "assets/images/UNS.png"
    },
  ];

  List<Map<String, String>> selectedItems = [];

  bool isSelected(Map<String, String> item) {
    return selectedItems.any((selected) =>
    selected['title'] == item['title'] &&
        selected['subtitle'] == item['subtitle']);
  }

  void toggleSelection(Map<String, String> item, bool? checked) {
    setState(() {
      if (checked == true) {
        selectedItems.add(item);
      } else {
        selectedItems.removeWhere((selected) =>
        selected['title'] == item['title'] &&
            selected['subtitle'] == item['subtitle']);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: selectionMode
            ? IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            setState(() {
              selectionMode = false;
              selectedItems.clear();
            });
          },
        )
            :IconButton(onPressed: (){
    Navigator.pop(context);
    }, icon:Icon(Icons.arrow_back_ios)
    ),
        title: Text(
          selectionMode
              ? "${selectedItems.length} selected"
              : "My Bookmark",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: selectionMode
            ? [
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Confirm Delete"),
                  content: const Text(
                      "Are you sure you want to delete the selected items?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(ctx); // close dialog
                      },
                      child: const Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(ctx); // close dialog
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Bookmark3Demo(),
                          ),
                        );
                      },
                      child: const Text(
                        "Delete",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ]
            : [],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            height: 5,
            thickness: 1,
            color: Color(0xffE0E0E0),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.article_outlined),
                    Text(
                      "  News",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return GestureDetector(
                      onLongPress: () {
                        setState(() {
                          selectionMode = true;
                          if (!isSelected(item)) {
                            selectedItems.add(item);
                          }
                        });
                      },
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (selectionMode)
                                Checkbox(
                                  value: isSelected(item),
                                  onChanged: (checked) =>
                                      toggleSelection(item, checked),
                                  activeColor: Colors.blue,
                                  checkColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  item['image']!,
                                  width: 170,
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
                                      item['title']!,
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      item['subtitle']!,
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
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// The new page
class DeletePage extends StatelessWidget {
  const DeletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delete Page"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "You navigated to Delete Page.\nNo real deletion happens here.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
