import 'package:flutter/material.dart';
import 'package:medi/info.dart';
import 'package:ionicons/ionicons.dart';

class SettingsPage extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {"image": "assets/images/medicare.png", "label": "MEDICARE"},
    {"image": "assets/images/medirare.png", "label": "MEDIRARE"},
    {"image": "assets/images/mediayur.png", "label": "MEDIAYUR"},
    {"image": "assets/images/mediaid.png", "label": "MEDIAID"},
    {"image": "assets/images/medifund.png", "label": "MEDIFUND"},
    {"image": "assets/images/medidiet.png", "label": "MEDIDIET"},
    {"image": "assets/images/medimind.png", "label": "MEDIMIND"},
    {"image": "assets/images/meditime.png", "label": "MEDITIME"},
    {"image": "assets/images/medikid.png", "label": "MEDIKID"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Settings'),
        titleTextStyle: TextStyle(fontFamily: 'boldfont', color: Colors.white, fontSize: 20),
        backgroundColor: Color.fromARGB(255, 21, 61, 88),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: features.length,
                itemBuilder: (context, index) {
                  final feature = features[index];
                  return Column(
                    children: [
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: feature["image"] != null
                              ? Image.asset(
                                  feature["image"],
                                  fit: BoxFit.cover,
                                )
                              : const Icon(
                                  Icons.image_not_supported,
                                  size: 40.0,
                                  color: Colors.grey,
                                ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        feature["label"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProjectInfoPage()),
                );
              },
              icon: const Icon(Ionicons.information_circle_outline, color: Colors.white),
              label: const Text(
                'More Info',
                style: TextStyle(
                  color: Colors.white, 
                  fontFamily: 'boldfont'
                  ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 21, 61, 88), // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
