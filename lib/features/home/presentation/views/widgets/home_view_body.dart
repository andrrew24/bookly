import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [CustomAppBar()]);
  }
}
