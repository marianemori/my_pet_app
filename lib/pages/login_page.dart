import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/default_texfield.dart';
import '../core/routers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                heightFactor: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/icons/pet.png'),
                      height: 25,
                      color: Color.fromARGB(255, 179, 135, 250),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('My pet',
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 179, 135, 250),
                            textStyle: Theme.of(context).textTheme.bodyMedium)),
                  ],
                ),
              ),
              Text(
                'Login',
                style: GoogleFonts.lato(
                    color: Colors.black54,
                    textStyle: Theme.of(context).textTheme.titleLarge,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 30,
              ),
              const DefaultTextfield(
                  label: 'E-mail',
                  hintText: 'Digite seu e-mail',
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(
                height: 10,
              ),
              const DefaultTextfield(
                label: 'Senha',
                hintText: 'Digite sua senha',
                icon: Icons.lock_outline,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Text(
                  'Esqueceu sua senha?',
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 179, 135, 250),
                      textStyle: Theme.of(context).textTheme.bodySmall),
                ),
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
                          const Color.fromARGB(255, 179, 135, 250)),
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
                onTap: () {
                  Modular.to.pushNamed(RouterName.signUpPage);
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Não possui uma conta?',
                        style: GoogleFonts.lato(
                            color: Colors.black26,
                            textStyle: Theme.of(context).textTheme.bodyMedium),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Cadastre-se',
                        style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 179, 135, 250),
                            textStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
