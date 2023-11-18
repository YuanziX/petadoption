import 'package:flutter/material.dart';

class filterTile extends StatelessWidget {
  final String name;

  const filterTile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: Text(
            name,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
