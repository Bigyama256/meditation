import 'package:flutter/material.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xFFFAD759C),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.expand_more,
                    color: Colors.white,
                    size: 32,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 32,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/lotus.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fragile(2020)",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Glass soul - 3rd Album",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbColor: Colors.white,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 10),
                    ),
                    child: Slider(
                      value: 0.6,
                      onChanged: (value) {},
                      min: 0,
                      max: 1,
                      activeColor: Colors.white,
                      inactiveColor: Colors.white.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.skip_previous),
                        color: Colors.white,
                        iconSize: 36,
                        onPressed: () {},
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 5),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.pause),
                          color: Colors.white,
                          iconSize: 36,
                          onPressed: () {},
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.skip_next),
                        color: Colors.white,
                        iconSize: 36,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
