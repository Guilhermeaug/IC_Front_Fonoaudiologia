import 'package:flutter/material.dart';

import 'home_desktop.dart';
import 'home_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SelectionArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Sistema Especialista'),
              ),
              body: DesktopView(width: width),
            );
          } else {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Sistema Especialista'),
              ),
              body: MobileView(width: width),
            );
          }
        },
      ),
    );
  }
}
