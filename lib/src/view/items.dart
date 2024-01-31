import 'package:flutter/cupertino.dart';

class CustomBottomItem extends StatelessWidget {
  const CustomBottomItem({
    super.key,
    required this.iconName,
    required this.onTap,
    required this.index,
    required this.currentPage,
  });

  final void Function()? onTap;
  final Widget iconName;
  final int index;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconName,
          const SizedBox(height: 2),
          index == currentPage
              ? Container(
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
          )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}