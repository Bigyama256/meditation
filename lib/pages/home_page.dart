import 'package:flutter/material.dart';
import 'package:meditation_app/pages/playlist_details_page.dart';

import 'common/custom_bottomnavigationbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map<String, String>> items = [
    {
      'title': 'Sleep',
      'description':
          'Lorem ipsum dolor sit amet,/n consectetur adipiscing elit. Integer/n sit amet elit cursus, posuere purus/n id, porta ex.',
      'image': 'assets/sleep.png'
    },
    {
      'title': 'Reflection',
      'description':
          'Lorem ipsum dolor sit amet,/n consectetur adipiscing elit. Integer/n sit amet elit cursus, posuere purus/n id, porta ex.',
      'image': 'assets/reflection.png'
    },
    {
      'title': 'Relaxation',
      'description':
          'Lorem ipsum dolor sit amet,/n consectetur adipiscing elit. Integer/n sit amet elit cursus, posuere purus/n id, porta ex.',
      'image': 'assets/relaxation.png'
    },
    {
      'title': 'Walk',
      'description':
          'Lorem ipsum dolor sit amet,/n consectetur adipiscing elit. Integer/n sit amet elit cursus, posuere purus/n id, porta ex.',
      'image': 'assets/walk.png'
    },
    {
      'title': 'Relaxation',
      'description':
          'Lorem ipsum dolor sit amet,/n consectetur adipiscing elit. Integer/n sit amet elit cursus, posuere purus/n id, porta ex.',
      'image': 'assets/sitting.png'
    },
    {
      'title': 'Relaxation',
      'description':
          'Lorem ipsum dolor sit amet,/n consectetur adipiscing elit. Integer/n sit amet elit cursus, posuere purus/n id, porta ex.',
      'image': 'assets/toe.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meditation'),
        backgroundColor: Color(0xFFF9D668C),
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFF9D668C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PlaylistPage();
              },
            ),
          );
        },
        child: Icon(
          Icons.play_arrow_outlined,
          color: Colors.white,
          size: 38,
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline, color: Colors.white),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity_outlined, color: Colors.white),
            label: 'Profile',
          ),
        ],
      ),
      //  BottomNavigationBar(
      //   backgroundColor: Color(0xFFF9D668C),
      //   unselectedItemColor: Colors.white,
      //   items: [

      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            itemCount: items.length,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              childAspectRatio: 3 / 4,
              mainAxisSpacing: 14,
            ),
            itemBuilder: (context, index) {
              return MeditationCard(
                title: items[index]['title'] ?? '',
                description: items[index]['description'] ?? '',
                image: items[index]['image'] ?? '',
              );
            }),
      ),
    );
  }
}

class MeditationCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const MeditationCard({
    required this.title,
    required this.description,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(2, 2),
            )
          ]),
      child: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: 106,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFFE3C5DA),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(image),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF9D668C),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 9,
                    fontFamily: 'Roboto-regular',
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFF9D668C),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, right: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(70, 25),
                  backgroundColor: Color(0xFFFC378CB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      (MaterialPageRoute(builder: (context) {
                        return PlaylistPage();
                      })));
                },
                child: Text('Listen'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
