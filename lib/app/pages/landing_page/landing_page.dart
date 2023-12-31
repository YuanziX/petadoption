import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petadoption/app/pages/login_page/login_page.dart';
import 'package:petadoption/app/utils/helper.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset('assets/images/landing_page_dogs.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Hello\nHuman!',
              style: GoogleFonts.julee(fontSize: 45),
            ),
            const SizedBox(height: 20),
            const Text(
              "You've deciced to get a new pet?",
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              "We will help you find a new friend.",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: height(context) * 0.1,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                shape: const CircleBorder(),
                backgroundColor: const Color.fromARGB(255, 255, 150, 185),
                child: const Icon(
                  Icons.pets,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginPageProvider(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
