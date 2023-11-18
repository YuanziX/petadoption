import 'package:flutter/material.dart';
import 'package:petadoption/core/models/pet.dart';

class PetTile extends StatelessWidget {
  final Pet pet;
  const PetTile({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100, width: 75, child: Image.network(pet.image));
  }
}

Pet p1 = Pet(
  name: 'Dog',
  breed: 'Corgi',
  petType: PetType.dog,
  description: 'description',
  image: 'image',
);
