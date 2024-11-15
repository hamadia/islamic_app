import 'package:flutter/material.dart';

class ContainerBackground extends StatelessWidget {
  final Widget child;
  const ContainerBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Sura_background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: SafeArea(
        child: child,
      ),
    );
  }
}
