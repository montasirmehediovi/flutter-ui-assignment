import 'package:flutter/material.dart';
import 'package:grid_layout_project/components/imageCard.dart';

import 'imageWithDetails.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        leading: IconButton(
          icon: const Icon(
              Icons.arrow_circle_left_sharp), // You can customize the icon here
          onPressed: () {
            // Add your button functionality here
          },
        ),
        centerTitle: true,
        title: const Text('Photo Gallery'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          height: MediaQuery.of(context).size.height,
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
            children: [
              ImageCard(
                imageUrl:
                    "https://images.unsplash.com/photo-1713877561507-881bf3b1c310?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                text: "Snow Mountain",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageWithDetails(
                                imageUrl:
                                    "https://images.unsplash.com/photo-1713877561507-881bf3b1c310?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                text: "Snow Mountain",
                                description: '',
                              )));
                },
              ),
              ImageCard(
                imageUrl:
                    "https://images.unsplash.com/photo-1713480841807-bf272a1f6baf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5Mnx8fGVufDB8fHx8fA%3D%3D",
                text: "Waves",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageWithDetails(
                                imageUrl:
                                    "https://images.unsplash.com/photo-1713480841807-bf272a1f6baf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5Mnx8fGVufDB8fHx8fA%3D%3D",
                                text: "Waves",
                                description: '',
                              )));
                },
              ),
              ImageCard(
                imageUrl:
                    "https://images.unsplash.com/photo-1713283546996-58ebbb6d02a5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5MXx8fGVufDB8fHx8fA%3D%3D",
                text: "Spring",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageWithDetails(
                                imageUrl:
                                    "https://images.unsplash.com/photo-1713283546996-58ebbb6d02a5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5MXx8fGVufDB8fHx8fA%3D%3D",
                                text: "Spring",
                                description: '',
                              )));
                },
              ),
              ImageCard(
                imageUrl:
                    "https://images.unsplash.com/photo-1711598850168-ae7592efc741?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMzB8fHxlbnwwfHx8fHw%3D",
                text: "Outer City",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageWithDetails(
                            imageUrl:
                            "https://images.unsplash.com/photo-1711598850168-ae7592efc741?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMzB8fHxlbnwwfHx8fHw%3D",
                            text: "Outer City",
                            description: '',
                          )));

                },
              ),
              ImageCard(
                imageUrl:
                    "https://images.unsplash.com/photo-1706914890322-336df4374736?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxODR8fHxlbnwwfHx8fHw%3D",
                text: "Light House",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageWithDetails(
                            imageUrl:
                            "https://images.unsplash.com/photo-1706914890322-336df4374736?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxODR8fHxlbnwwfHx8fHw%3D",
                            text: "Light House",
                            description: '',
                          )));
                },
              ),

              ImageCard(
                imageUrl: "https://images.unsplash.com/photo-1713769921216-df920aa2bddb?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                text: "Forest",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageWithDetails(
                            imageUrl: "https://images.unsplash.com/photo-1713769921216-df920aa2bddb?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            text: "Forest",
                            description: '',
                          )));
                },
              ),

              ImageCard(
                imageUrl:"https://plus.unsplash.com/premium_photo-1678580380802-9fda48ddcac8?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                text: "Praying",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageWithDetails(
                            imageUrl:"https://plus.unsplash.com/premium_photo-1678580380802-9fda48ddcac8?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            text: "Praying",
                            description: '',
                          )));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
