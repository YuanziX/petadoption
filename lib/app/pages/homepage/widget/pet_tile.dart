import 'package:flutter/material.dart';
import 'package:petadoption/app/utils/helper.dart';
import 'package:petadoption/core/models/pet.dart';

class PetTile extends StatelessWidget {
  final Pet pet;
  const PetTile({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/landing_page_dogs.jpg',
        ),
      ),
    );
  }
}

Pet p1 = Pet(
  name: 'Dog',
  breed: 'Corgi',
  petType: PetType.dog,
  description: 'description',
  image:
      'https://windows10wall.com/wp-content/uploads/2014/06/Cute-Puppy-Small-Dog-HD-Free-Wallpaper.jpg',
);
