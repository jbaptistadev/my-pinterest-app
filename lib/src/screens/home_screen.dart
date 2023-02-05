import 'package:flutter/material.dart';
import 'package:my_pinterest_app/src/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final items = [
    ListItem(
        label: 'Sliver List',
        onPress: () {},
        refImage: const Image(
          image: AssetImage('assets/sliver_app.png'),
          height: 100,
          width: 100,
        )),
    ListItem(
        label: 'Sliver List',
        onPress: () {},
        refImage: const Image(
          image: AssetImage('assets/sliver_app.png'),
          height: 100,
          width: 100,
        )),
    ListItem(
        label: 'Sliver List',
        onPress: () {},
        refImage: const Image(
          image: AssetImage('assets/sliver_app.png'),
          height: 100,
          width: 100,
        )),
    ListItem(
        label: 'Sliver List',
        onPress: () {},
        refImage: const Image(
          image: AssetImage('assets/sliver_app.png'),
          height: 100,
          width: 100,
        )),
    ListItem(
        label: 'Sliver List',
        onPress: () {},
        refImage: const Image(
          image: AssetImage('assets/sliver_app.png'),
          height: 100,
          width: 100,
        )),
    ListItem(
        label: 'Sliver List',
        onPress: () {},
        refImage: const Image(
          image: AssetImage('assets/sliver_app.png'),
          height: 100,
          width: 100,
        )),
    ListItem(
        label: 'Sliver List',
        onPress: () {},
        refImage: const Image(
          image: AssetImage('assets/sliver_app.png'),
          height: 100,
          width: 100,
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _BackgroundImage(
          child: Componentslist(
        title: 'My Pinterest',
        items: items,
      )),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  final Widget child;

  const _BackgroundImage({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background_image.png'),
              fit: BoxFit.cover)),
      child: child,
    );
  }
}
