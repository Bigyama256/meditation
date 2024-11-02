import 'package:flutter/material.dart';
import 'package:meditation_app/pages/home_page.dart';
import 'package:meditation_app/pages/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/3.png")),
            Padding(
              padding: const EdgeInsets.only(
                top: 152,
                left: 104,
              ),
              child: Column(
                children: [
                  Container(
                    height: 183,
                    width: 152,
                    child: Image.asset("assets/Logo.png"),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'WELCOME TO',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF9D668C),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'MEDITATION',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF9D668C),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF9D668C),
                      minimumSize: Size(127, 34),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset("assets/2.png")),
          ],
        ),
      ),
    );
  }
}
