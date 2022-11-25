import 'package:flutter/material.dart';
class TopPage extends StatelessWidget {
  const TopPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.08,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'M i  P e r f i l',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const ImageIcon(
              size: 40,
              AssetImage(
                'assets/icons/trinity32px.png',
              ),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
