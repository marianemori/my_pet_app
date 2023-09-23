import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/default_texfield.dart';

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
      body: SingleChildScrollView(
        child: Padding(
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
              Text(
                'Doe e adote pets <3',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    textStyle: Theme.of(context).textTheme.titleLarge),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                heightFactor: 1.2,
                child: Column(
                  children: [
                    const DefaultTextfield(
                        hintText: 'Digite seu e-mail',
                        icon: Icons.email_outlined,
                        keyboardType: TextInputType.emailAddress),
                    const SizedBox(
                      height: 10,
                    ),
                    const DefaultTextfield(
                      hintText: 'Digite sua senha',
                      icon: Icons.password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF757EFA)),
                          ),
                          child: const Text('Entrar'),
                          onPressed: () {}),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Não possui uma conta?',
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  textStyle:
                                      Theme.of(context).textTheme.bodyMedium),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Cadastre-se',
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.w700)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
