import 'package:flutter/material.dart';

class RecipeDetails extends StatelessWidget {
  final String thumbnailUrl;
  final String title;
  const RecipeDetails(
      {super.key, required this.thumbnailUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("title here")),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 600,
            child: Image(
              image: NetworkImage(thumbnailUrl),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('''"$title"''')
        ],
      ),
    );
  }
}
