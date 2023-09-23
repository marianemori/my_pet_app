import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9ca8fb),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              heightFactor: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/icons/pet.png'),
                    height: 25,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('My pet',
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          textStyle: Theme.of(context).textTheme.bodyMedium)),
                ],
              ),
            ),
            Text('Doe e adote pets <3',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    textStyle: Theme.of(context).textTheme.titleLarge))
          ],
        ),
      ),
    );
  }
}
