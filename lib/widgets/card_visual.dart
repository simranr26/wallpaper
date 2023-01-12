import 'package:flutter/material.dart';

class CardVisual extends StatelessWidget {
  String urltoImage;
  CardVisual({super.key, required this.urltoImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox( 
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ClipRRect(child: Image.network(urltoImage, fit: BoxFit.cover,), ),
      ),
    );
  }
}
