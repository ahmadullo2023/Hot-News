import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.titleT,
  });

  final Widget titleT;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: titleT,
          trailing: Icon(Icons.arrow_forward_ios),
          textColor: Colors.white,
          iconColor: Colors.white,
        ),
        const Divider(color: Colors.white),
      ],
    );
  }
}