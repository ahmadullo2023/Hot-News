import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({super.key, required this.article, required this.image, required this.isFolovered});

  final article;
  final image;
  final isFolovered;

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  widget.image,
                  fit: BoxFit.fill,
                ),
                Text(
                  widget.article["description"],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.article["author"] ?? "author unknown",
                      style: const TextStyle(color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(
                        widget.isFolovered
                            ? Icons.favorite_border
                            : Icons.favorite,
                        color: Colors.red,
                      ),
                    )                  ],
                ),
                const Divider(color: Colors.white10),
              ],
            ),
          ),
        ));
  }
}
