enum PetType { dog, cat, bird, fish, rabbit, other }

class Pet {
  String name;
  String breed;
  PetType petType;
  String description;
  String foodHabits;
  String image;

  Pet({
    required this.name,
    required this.breed,
    required this.petType,
    required this.description,
    this.foodHabits = '',
    required this.image,
  });
}
