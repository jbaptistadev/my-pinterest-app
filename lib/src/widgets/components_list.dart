import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Componentslist extends StatelessWidget {
  const Componentslist({super.key, required this.title, required this.items});

  final String title;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return ElasticInDown(
      delay: const Duration(milliseconds: 2000),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPersistentHeader(
            delegate: _SilverCustomHeaderDelegate(
              minHeight: 140,
              maxHeight: 208,
              child: _Header(title: title),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ...items,
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String title;

  const _Header({required this.title});
  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      delay: const Duration(milliseconds: 1000),
      child: SizedBox.expand(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(27, 58, 75, 0.71),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElasticInLeft(
                delay: const Duration(milliseconds: 2000),
                child: Text(title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 27.65,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w500)),
              ),
              ElasticInRight(
                delay: const Duration(milliseconds: 2000),
                child: const Image(
                  image: AssetImage(
                    'assets/lugia_icon.png',
                  ),
                  width: 81,
                  height: 84,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SilverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SilverCustomHeaderDelegate(
      {required this.minHeight, required this.maxHeight, required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant _SilverCustomHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
