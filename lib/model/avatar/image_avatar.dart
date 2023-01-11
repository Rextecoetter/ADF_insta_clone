import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  final bool live;
  final bool visto;

  const ImageAvatar({
    Key? key,
    required this.urlImage,
    required this.live,
    required this.visto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 45,
          child: Container(
            height: 150,
            width: 150,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: const LinearGradient(
                  colors: [Colors.yellow, Colors.orange, Colors.red, Colors.purple],
                  begin: Alignment.bottomLeft,
                )),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 25,
                backgroundImage: NetworkImage(urlImage),
              ),
            ),
          ),
        )
      ],
    );
  }
}
