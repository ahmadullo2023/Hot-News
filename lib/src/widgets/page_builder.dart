import 'package:flutter/material.dart';
import '../screens/favorite.dart';
import '../screens/home.dart';
import '../screens/profile.dart';
import '../view/items.dart';


class PageBuilder extends StatefulWidget {
  const PageBuilder({super.key});
  @override
  State<PageBuilder> createState() => _PageBuilderState();
}
class _PageBuilderState extends State<PageBuilder> {
  late final PageController controller;
  @override
  void initState() {
    controller = PageController();
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  void onTap(int value) {
    controller.animateToPage(
      value,
      duration: const Duration(milliseconds: 150),
      curve: Curves.linear,
    );
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Padding(
        padding:
        const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(45),
          ),
          child: BottomAppBar(
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomBottomItem(
                  iconName: const Icon(Icons.home_outlined),
                  currentPage: 0,
                  index: index,
                  onTap: () {
                    setState(() {
                      onTap(index = 0);
                    });
                  },
                ),
                CustomBottomItem(
                  iconName: const Icon(Icons.favorite_border),
                  currentPage: 1,
                  index: index,
                  onTap: () {
                    setState(() {
                      onTap(index = 1);
                    });
                  },
                ),
                CustomBottomItem(
                  iconName: const Icon(Icons.person_outline),
                  currentPage: 2,
                  index: index,
                  onTap: () {
                    setState(() {
                      onTap(index = 2);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          Home(),
          FavoritePage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
