import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/default_texfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            heightFactor: 1.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Modular.to.pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black54,
                    size: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Cadastro',
                  style: GoogleFonts.lato(
                      color: Colors.black54,
                      textStyle: Theme.of(context).textTheme.titleLarge,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 30,
                ),
                const DefaultTextfield(
                    label: 'Primeiro nome',
                    hintText: 'Digite seu primeiro nome',
                    keyboardType: TextInputType.text),
                const SizedBox(
                  height: 10,
                ),
                const DefaultTextfield(
                  label: 'Sobrenome',
                  hintText: 'Digite seu sobrenome',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
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
                      child: const Text('Continuar'),
                      onPressed: () {}),
                ),
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Modular.to.pop();
                  },
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Já possui uma conta?',
                          style: GoogleFonts.lato(
                              color: Colors.black26,
                              textStyle:
                                  Theme.of(context).textTheme.bodyMedium),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Login',
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
      ),
    );
  }
}
