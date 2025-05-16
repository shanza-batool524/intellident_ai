import 'package:flutter/material.dart';

class ColorPaletteScreen extends StatelessWidget {
  // Old palettes (4 palettes)
  final List<Map<String, dynamic>> earthyCozyColors = [
    {'name': 'Warm Terracotta', 'color': Color(0xFFC76B40)},
    {'name': 'Sage Green', 'color': Color(0xFFA3B18A)},
    {'name': 'Creamy Beige', 'color': Color(0xFFF2E9E4)},
    {'name': 'Charcoal Grey', 'color': Color(0xFF3B3B3B)},
  ];

  final List<Map<String, dynamic>> oceanBreezeColors = [
    {'name': 'Deep Teal', 'color': Color(0xFF3A6B6B)},
    {'name': 'Soft Coral', 'color': Color(0xFFF38BA0)},
    {'name': 'Pale Mint', 'color': Color(0xFFC6E2D7)},
    {'name': 'Light Stone', 'color': Color(0xFFE6E6E6)},
  ];

  final List<Map<String, dynamic>> warmSunsetColors = [
    {'name': 'Burnt Orange', 'color': Color(0xFFD97D54)},
    {'name': 'Dusty Blue', 'color': Color(0xFF6C8EAD)},
    {'name': 'Pale Peach', 'color': Color(0xFFF7E9D7)},
    {'name': 'Warm Gray', 'color': Color(0xFFA9A9A9)},
  ];

  final List<Map<String, dynamic>> forestWalkColors = [
    {'name': 'Moss Green', 'color': Color(0xFF556B2F)},
    {'name': 'Soft Mustard', 'color': Color(0xFFD9BF77)},
    {'name': 'Pale Olive', 'color': Color(0xFFC9D6AA)},
    {'name': 'Off-white', 'color': Color(0xFFFAF9F6)},
  ];

  // New palettes (3 palettes)
  final List<Map<String, dynamic>> paletteA = [
    {'name': 'Teal Blue', 'color': Color(0xFF3A6B6B)},
    {'name': 'Sage Green', 'color': Color(0xFFA3B18A)},
    {'name': 'Dusty Blue', 'color': Color(0xFF6A8D92)},
    {'name': 'Warm Taupe', 'color': Color(0xFFA79984)},
  ];

  final List<Map<String, dynamic>> paletteB = [
    {'name': 'Soft Mustard', 'color': Color(0xFFD9BF77)},
    {'name': 'Muted Clay', 'color': Color(0xFFB5A57D)},
    {'name': 'Olive Gray', 'color': Color(0xFF78866B)},
    {'name': 'Pale Mustard', 'color': Color(0xFFD1C17D)},
  ];

  final List<Map<String, dynamic>> paletteC = [
    {'name': 'Misty Teal', 'color': Color(0xFF7CA9A6)},
    {'name': 'Soft Plum', 'color': Color(0xFF8E7C82)},
    {'name': 'Sage Green', 'color': Color(0xFFA3B18A)},
    {'name': 'Warm Taupe', 'color': Color(0xFFA79984)},
  ];

  Widget buildColorRow(List<Map<String, dynamic>> colors) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: colors
          .map(
            (colorInfo) => Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: colorInfo['color'],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12),
              ),
            ),
            SizedBox(height: 6),
            SizedBox(
              width: 70,
              child: Text(
                colorInfo['name'],
                style: TextStyle(fontSize: 11),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Cool & Cozy Palettes'),
        backgroundColor: Colors.teal[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Earthy Cozy Palette',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              buildColorRow(earthyCozyColors),

              SizedBox(height: 30),
              Text(
                'Ocean Breeze Palette',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              buildColorRow(oceanBreezeColors),

              SizedBox(height: 30),
              Text(
                'Warm Sunset Palette',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              buildColorRow(warmSunsetColors),

              SizedBox(height: 30),
              Text(
                'Forest Walk Palette',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              buildColorRow(forestWalkColors),

              SizedBox(height: 30),
              Text(
                'Palette A: Teal + Sage + Neutrals',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              buildColorRow(paletteA),

              SizedBox(height: 30),
              Text(
                'Palette B: Soft Mustard + Earthy Mix',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              buildColorRow(paletteB),

              SizedBox(height: 30),
              Text(
                'Palette C: Calm Cool Contrast',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              buildColorRow(paletteC),
            ],
          ),
        ),
      ),
    );
  }
}
