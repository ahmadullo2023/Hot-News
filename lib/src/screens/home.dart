import 'package:flutter/material.dart';
import '../services/services_api.dart';
import '../view/news_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<dynamic>> futureList;

  @override
  void initState() {
    futureList = fetchFutureFunction();
    super.initState();
  }

  Future<List<dynamic>> fetchFutureFunction() async {
    final service = await ApiService.fetchNewsData();
    return service;
  }

  Future<void> refresh() async {
    setState(() {
      futureList = fetchFutureFunction();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: FutureBuilder(
        future: futureList,
        builder: (context, snapshot){
         //if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final article = snapshot.data![index];
                  final image = article["urlToImage"];
                  return image != null
                      ? NewsCard(article: article, image: image)
                      : const SizedBox();
                }
            );
          }
        //},
      ),
    );
  }
}
// final article = snapshot.data![index];
// final image = article["urlToImage"];