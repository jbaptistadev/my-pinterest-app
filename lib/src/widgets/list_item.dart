import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.label,
      required this.refImage,
      required this.onPress});

  final String label;
  final Widget refImage;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onPress,
        child: _GradientBackground(
          child: Stack(
            children: [
              Positioned(
                  right: 10,
                  top: 5,
                  child: Transform.rotate(
                    angle: 0.2,
                    child: refImage,
                    // child: const Icon(Icons.adb_rounded,
                    //     size: 150, color: Color.fromRGBO(32, 15, 95, 0.2)),
                  )),
              _ContentItem(label: label)
            ],
          ),
        ),
      ),
    );
  }
}

class _ContentItem extends StatelessWidget {
  const _ContentItem({
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 40,
            height: 130,
          ),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                  fontSize: 19.2,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2),
            ),
          ),
          // const Icon(
          //   Icons.adb_rounded,
          //   color: Colors.white,
          // ),
          const SizedBox(
            width: 40,
          ),
        ],
      ),
    );
  }
}

class _GradientBackground extends StatelessWidget {
  final Widget child;

  const _GradientBackground({required this.child});
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(colors: [
          Color.fromRGBO(32, 15, 95, 0.8),
          Color.fromRGBO(97, 28, 220, 0.78),
          // Color.fromRGBO(222, 105, 157, 0.78),
          // Color.fromRGBO(241, 163, 140, 0.67)
        ]));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        height: 104,
        width: double.infinity,
        decoration: boxDecoration,
        child: child,
      ),
    );
  }
}
