import 'package:flutter/material.dart';

import 'news_card.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key,
      required this.article,
      required this.image,
      required this.isFolovered,
  });

  final article;
  final image;
  final bool isFolovered;

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext) =>
                NewsCard(
                  article: widget.article,
                  image: widget.image,
                  isFolovered: widget.isFolovered,
                ),
          ),
        ),
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
                )
              ],
            ),
            const Divider(color: Colors.white10),
          ],
        ),
      ),
    );
  }
}
