import 'package:blank_name/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DuaCard extends StatelessWidget {
  final ThemeData theme;
  final String image;
  final String title;
  final String duaArabic;
  final String duaTranslation = "";
  final TextStyle duaStyle;
  final void Function()? onTabSeeTranslation;
  const DuaCard(
      {super.key,
      required this.theme,
      required this.image,
      required this.title,
      required this.duaArabic,
      required this.duaStyle,
      required this.onTabSeeTranslation});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: theme.colorScheme.inversePrimary,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      duaArabic,
                      style: duaStyle
                    ),
                  ],
                ),
              ),
              Image.asset(
                image,
                height: 100,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Button(
                text: 'See translation',
                theme: theme,
                onTab: onTabSeeTranslation,
              ),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.ios_share_rounded),
                  color: theme.colorScheme.inversePrimary),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline_rounded),
                  color: theme.colorScheme.inversePrimary),
            ],
          ),
        ],
      ),
    );
  }
}
