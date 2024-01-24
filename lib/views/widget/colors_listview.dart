import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentColor = 0;

  List<Color> color = const [
    Color(0xff7400B8),
    Color(0xff6930C3),
    Color(0xff5E60CE),
    Color(0xff4EA8DE),
    Color(0xff5390D9),
    Color(0xff48BFE3),
    Color(0xff56CFE1),
    Color(0xff64DFDF),
    Color(0xff72EFDD),
    Color(0xff80FFDB),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                currentColor = index;
                setState(() {});
              },
              child: ColorItem(
                color: color[index],
                isActive: currentColor == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
