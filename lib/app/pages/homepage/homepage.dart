import 'package:flutter/material.dart';
import 'package:petadoption/app/pages/homepage/widget/pet_tile.dart';
import 'package:petadoption/app/utils/Helper.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: height(context),
          width: width(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height(context) * .05,
                ),
                const Text(
                  'Search Friend',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    itemCount: 10,
                    controller: PageController(viewportFraction: 0.8),
                    onPageChanged: (index) => setState(() => _index = index),
                    itemBuilder: (context, index) {
                      return AnimatedPadding(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.fastOutSlowIn,
                        padding: EdgeInsets.all(_index == index ? 0.0 : 8.0),
                        child: PetTile(pet: p1),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
