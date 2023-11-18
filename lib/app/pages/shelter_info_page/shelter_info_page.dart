import 'package:flutter/material.dart';
import 'package:petadoption/app/utils/helper.dart';

class ShelterInfoPage extends StatelessWidget {
  const ShelterInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: height(context),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/cat.jpg',
              height: height(context) * 0.4,
              width: width(context),
              fit: BoxFit.cover,
            ),
            Positioned(
              top: height(context) * 0.35,
              child: Container(
                height: height(context) * 0.65,
                width: width(context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ABC pet shelter',
                        style: TextStyle(fontSize: 40),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 60,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            section('About'),
                            section('Contact'),
                            section('Reviews'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'The most trusted and reliable pet shelter in the town, they are well known for keeping great care of the pets and providing new owners will all the info that they might require.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: height(context) * 0.05,
              left: width(context) * 0.1,
              right: width(context) * 0.1,
              child: SizedBox(
                width: width(context) * 0.8,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const ListTile(
                    title: Text('Contact shelter'),
                    trailing: Icon(Icons.phone_rounded),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget section(String label) {
    return SizedBox(
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
