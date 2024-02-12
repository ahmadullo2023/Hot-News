import 'package:flutter/material.dart';
import 'package:hot_news/src/widgets/page_builder.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageBuilder(),
    );
  }
}
