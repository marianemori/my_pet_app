import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTextfield extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? label;

  const DefaultTextfield(
      {Key? key,
      this.hintText,
      this.icon,
      this.keyboardType,
      this.obscureText = false,
      this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(label!,
              style: GoogleFonts.lato(
                  color: Colors.black54,
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontWeight: FontWeight.w700)),
        const SizedBox(
          height: 7,
        ),
        Container(
          height: height * 0.065,
          padding: EdgeInsets.all(width * 0.03),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.black26)),
          child: Center(
            child: Row(
              children: <Widget>[
                if (icon != null) ...[
                  Icon(
                    icon,
                    color: Colors.black26,
                    size: 18,
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                ],
                Expanded(
                  child: TextField(
                    style: GoogleFonts.lato(
                        color: Colors.black26,
                        textStyle: Theme.of(context).textTheme.bodyMedium),
                    keyboardType: keyboardType,
                    obscureText: obscureText,
                    cursorColor: Colors.black26,
                    decoration: InputDecoration.collapsed(
                      hintText: hintText,
                      hintStyle: const TextStyle(color: Colors.black26),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
