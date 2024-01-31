import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({super.key, required this.article, required this.image});

  final article;
  final image;

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.image,
              fit: BoxFit.fill,
            ),
            Text(
              widget.article["title"],
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.article["author"],
                  style: const TextStyle(color: Colors.white),
                ),
                const Icon(Icons.favorite_border, color: Colors.white),
              ],
            ),
            const Divider(color: Colors.white10),
          ],
        ));
  }
}
