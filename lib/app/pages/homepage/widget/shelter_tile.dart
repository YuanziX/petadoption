import 'package:flutter/material.dart';
import 'package:petadoption/app/pages/shelter_info_page/shelter_info_page.dart';
import 'package:petadoption/app/utils/helper.dart';

class shelter_tile extends StatelessWidget {
  const shelter_tile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ShelterInfoPage())),
      child: SizedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/cat.jpg',
            height: height(context) * 0.4,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
