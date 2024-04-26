import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
   String imageUrl;
   String text;
  final double height;
  final double width;
  final VoidCallback onPressed;

   ImageCard({
    Key? key,
    this.height = 200,
    this.width = 300,
    required this.onPressed,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 12, bottom: 12),
            child: Align(
              alignment: AlignmentDirectional.bottomStart,
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}
