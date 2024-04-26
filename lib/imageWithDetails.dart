import 'package:flutter/material.dart';
import 'package:grid_layout_project/components/imageCard.dart';

class ImageWithDetails extends StatefulWidget {
  final String imageUrl;
  final String text;
  final String description;

  const ImageWithDetails({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.description,
  });

  @override
  State<ImageWithDetails> createState() => _ImageWithDetailsState();
}

class _ImageWithDetailsState extends State<ImageWithDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(widget.text),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            children: [
              //Showing The Card Image
              ImageCard(
                imageUrl: widget.imageUrl,
                text: widget.text,
                width: double.infinity,
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              //Showing The Text
               Align(
                 alignment: AlignmentDirectional.topStart,
                 child: Text(
                  widget.text,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                               ),
               ),
              const SizedBox(
                height: 10,
              ),

              const Align(
                alignment: AlignmentDirectional.topStart,
                child:  Text(
                  "Being in the Nature or Even Viewing Scenes of Nature, "
                      "Reduce Anger, Fear, And Stress And Increase Pleasant feelings.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //Showing The button
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: Colors.lightGreen,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    'View Details',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //Suggestion Text
              const Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Suggestions",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //Show 2 images in a row by using of imageCard
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Replace with your actual ImageCard widgets with data
                  Flexible(
                    child: ImageCard(
                      imageUrl:
                          "https://images.unsplash.com/photo-1713877561507-881bf3b1c310?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      text: "Snow Mountain",
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: ImageCard(
                      imageUrl:
                          "https://images.unsplash.com/photo-1713480841807-bf272a1f6baf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5Mnx8fGVufDB8fHx8fA%3D%3D",
                      text: "Waves",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
