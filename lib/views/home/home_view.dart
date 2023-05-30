import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/views/home/widgets/body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset('assets/icons/menu(1).svg'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search(1).svg'))
      ],
    );
  }
}
