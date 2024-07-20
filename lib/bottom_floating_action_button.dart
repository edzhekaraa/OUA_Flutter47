import 'package:flutter/material.dart';

class BottomFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String iconPath;
  final String backgroundPath;

  BottomFloatingActionButton({
    required this.onPressed,
    required this.iconPath,
    required this.backgroundPath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100, // Kutu yüksekliği
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundPath), // Arka plan resmi
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: FloatingActionButton(
                onPressed: onPressed,
                child: Image.asset(iconPath), // Floating button simgesi
                backgroundColor: Colors.transparent, // Şeffaf arka plan
                elevation: 0, // Gölgeyi kaldırır
                highlightElevation: 0, // Tıklama anında oluşan gölgeyi kaldırır
              ),
            ),
          ),
        ),
      ],
    );
  }
}
