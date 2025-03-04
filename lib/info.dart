import 'package:flutter/material.dart';

class ProjectInfoPage extends StatelessWidget {
  final List<Map<String, String>> modules = [
    {"name": "MEDICARE", "description": "A comprehensive healthcare module focusing on providing standard medical assistance and support."},
    {"name": "MEDIRARE", "description": "A specialized module designed to manage and support patients with rare diseases and conditions."},
    {"name": "MEDIAYUR", "description": "A holistic healthcare module combining traditional Ayurveda with modern medical practices."},
    {"name": "MEDIAID", "description": "An emergency aid module providing quick access to first-aid resources and guidance."},
    {"name": "MEDIFUND", "description": "A financial assistance module helping patients with medical funding and insurance claims."},
    {"name": "MEDIDIET", "description": "A dietary management module offering personalized nutrition and meal planning."},
    {"name": "MEDIMIND", "description": "A mental health module focusing on emotional well-being and psychological support."},
    {"name": "MEDITIME", "description": "A time management module helping users track and manage their medical schedules and appointments."},
    {"name": "MEDIKID", "description": "A pediatric care module tailored to meet the healthcare needs of children and infants."}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        titleTextStyle: TextStyle(fontFamily: 'boldfont', color: Colors.white, fontSize: 20),
        backgroundColor: Color.fromARGB(255, 21, 61, 88),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/medi.png'),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Project MEDI',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'boldfont'
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '"Medical Expertise Delivered Instantly"',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'boldfont',
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Project Description:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'boldfont'
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'This project aims to integrate multiple AI-powered chatbots designed to assist in healthcare-related situations. From medicine information to fitness and mental health guidance, the application caters to diverse needs instantly.',
              style: TextStyle(fontSize: 14.0, fontFamily: 'boldfont'),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Modules:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'boldfont'
              ),
            ),
            const SizedBox(height: 8.0),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: modules.length,
              itemBuilder: (context, index) {
                final module = modules[index];
                return ExpansionTile(
                  leading: IconButton(
          icon: Icon(Icons.health_and_safety, color: Color.fromARGB(255, 21, 61, 88)),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
                  title: Text(module["name"]!, 
                  style: TextStyle(fontFamily: 'boldfont'),),
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(module["description"]!, 
                      style: TextStyle(fontFamily: 'boldfont'),
                      textAlign: TextAlign.justify,),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}