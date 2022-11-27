import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  size: 35,
                  color: const Color(0xffE0E5EB).withOpacity(0.5),
                )),
            const ImageIcon(
              AssetImage('assets/icons/trinity64px.png'),
              color: Colors.white,
              size: 60,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_rounded,
                  size: 35,
                  color: const Color(0xffE0E5EB).withOpacity(0.5),
                )),
          ],
        ),
      ),
    );
  }
}
