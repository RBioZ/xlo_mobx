import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/screens/home/home_screen.dart';
import 'package:xlo_mobx/stores/page_store.dart';

class BaseScreen extends StatefulWidget {
  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController pageController = PageController();

  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    reaction((_) => pageStore.page,
        (page) => pageController.jumpToPage(page as int));
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        HomeScreen(),
        Container(color: Colors.green),
        Container(color: Colors.blue),
        Container(color: Colors.yellow),
        Container(color: Colors.cyan),
      ],
    );
  }
}
