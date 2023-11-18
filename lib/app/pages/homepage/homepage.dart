import 'package:flutter/material.dart';
import 'package:petadoption/app/pages/homepage/widget/filter_tile.dart';
import 'package:petadoption/app/pages/homepage/widget/pet_tile.dart';
import 'package:petadoption/app/pages/homepage/widget/shelter_tile.dart';
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
      appBar: AppBar(
        title: const Text(
          'Hello Guest!!',
          style: TextStyle(fontSize: 30),
        ),
        scrolledUnderElevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: CircleAvatar(),
          )
        ],
      ),
      body: SizedBox(
        height: height(context),
        width: width(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Search Friend',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 1.5,
                  ),
                ),
                SizedBox(height: height(context) * 0.02),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 228, 237),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        label: const Text('Search')),
                  ),
                ),
                SizedBox(height: height(context) * 0.02),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      filterTile(name: 'All'),
                      filterTile(name: 'Dogs'),
                      filterTile(name: 'Cats'),
                      filterTile(name: 'Bunny'),
                      filterTile(name: 'Fishes'),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 30, top: 20),
                  child: Text(
                    'Adopt  Me',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    itemCount: 10,
                    controller: PageController(viewportFraction: 0.6),
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
                const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 30, top: 20),
                  child: Text(
                    'Shelter near me',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    itemCount: 10,
                    controller: PageController(viewportFraction: 0.6),
                    onPageChanged: (index) => setState(() => _index = index),
                    itemBuilder: (context, index) {
                      return AnimatedPadding(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.fastOutSlowIn,
                          padding: EdgeInsets.all(_index == index ? 0.0 : 8.0),
                          child: const shelter_tile());
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
