import 'package:flutter/material.dart';

class DefaultTextfield extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const DefaultTextfield(
      {Key? key,
      this.hintText,
      this.icon,
      this.keyboardType,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.07,
      padding: EdgeInsets.all(width * 0.03),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Row(
          children: <Widget>[
            if (icon != null) ...[
              Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: width * 0.04,
              ),
            ],
            Expanded(
              child: TextField(
                style: const TextStyle(color: Colors.white),
                keyboardType: keyboardType,
                obscureText: obscureText,
                cursorColor: Colors.white,
                decoration: InputDecoration.collapsed(
                  hintText: hintText,
                  hintStyle: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
