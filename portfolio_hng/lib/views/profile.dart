import 'package:flutter/material.dart';

import 'components/expanded_container.dart';
import 'components/header.dart';
import 'components/landscape.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // final isLandScape =
    //     MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => orientation == Orientation.portrait
            ? Column(
                children: const [
                  Header(),
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: ExpandedContainer(),
                  ),
                ],
              )
            : const Landscape(),
      ),
    );
  }
}
