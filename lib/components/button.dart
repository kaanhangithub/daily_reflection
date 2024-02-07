import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function()? onTab;
  final ThemeData theme;
  const Button(
      {super.key,
      required this.text,
      required this.onTab,
      required this.theme});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTab,
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.background,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical :10, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 15,
                    color: theme.colorScheme.inversePrimary,
                  )),
              const SizedBox(width: 5),
              const Icon(
                size: 17,
                Icons.arrow_forward,
                color: Color.fromARGB(255, 66, 66, 66),
              )
            ],
          ),
        ));
  }
}
