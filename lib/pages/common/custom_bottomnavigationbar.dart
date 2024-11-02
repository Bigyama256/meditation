import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  const CustomBottomNavigationBar({
    required this.items,
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedNav = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Color(0xFFF9D668C),
      child: Row(
        children: List.generate(
          widget.items.length,
          (index) {
            return Expanded(
              child: InkWell(
                onTap: () {
                  selectedNav = index;
                  setState(() {});
                },
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: selectedNav == index ? Color(0xFFFF5DDF8) : null,
                      ),
                      child: widget.items[index].icon,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.items[index].label ?? '',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
