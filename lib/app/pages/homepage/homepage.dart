import 'package:flutter/material.dart';
import 'package:petadoption/app/utils/Helper.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
                // ListView.builder(
                //   scrollDirection: Axis.horizontal,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
