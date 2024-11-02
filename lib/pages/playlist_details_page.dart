import 'package:flutter/material.dart';
import 'package:meditation_app/pages/play_page.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sleep'),
        backgroundColor: Color(0xFFF9D668C),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(15),
              shrinkWrap: true,
              itemCount: 7,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 15,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 95,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFEEE0EA),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2, 3),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fragile (2020)",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xFFF9D668C),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Glass soul - 3rd Album",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFF9D668C),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Color(0xFFF9D668C),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: Color(0xFFF9D668C),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fragile(2020)",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return PlayPage(); 
                        }));
                      },
                      icon: Icon(Icons.play_circle_outline_outlined),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
