import 'package:blank_name/components/button.dart';
import 'package:blank_name/components/card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flip_card/flip_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: theme.colorScheme.inversePrimary,
      ),
      backgroundColor: theme.colorScheme.background,
      drawer: Drawer(), //todo
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text('Nightly Reflection',
                  style: GoogleFonts.dmSerifText(
                    fontSize: 45,
                    color: theme.colorScheme.inversePrimary,
                  ))),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Text(
              'As night falls, embrace a moment of gratitude and reflection.',
              style: GoogleFonts.dmSans(
                fontSize: 17,
                color: theme.colorScheme.inversePrimary,
              )
            )
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                FlipCard(
                  key: cardKey,
                  fill: Fill.none,
                  flipOnTouch: false,
                  direction: FlipDirection.HORIZONTAL,
                  front: DuaCard(
                    theme: theme,
                    image: 'lib/components/images/prayer.png',
                    title: 'Al-Imran 8',
                    duaArabic:
                        'رَبَّنَا لَا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِن لَّدُنكَ رَحْمَةً ۚ إِنَّكَ أَنتَ ٱلْوَهَّابُ',
                    duaStyle: GoogleFonts.notoNaskhArabic(
                      fontSize: 20,
                      color: theme.colorScheme.inversePrimary,
                    ),
                    onTabSeeTranslation: () =>
                        cardKey.currentState?.toggleCard(),
                  ),
                  back: DuaCard(
                      theme: theme,
                      image: 'lib/components/images/prayer.png',
                      title: 'Al-Imran 8',
                      duaArabic:
                          'Our Lord! Do not let our hearts deviate after you have guided us. Grant us Your mercy. You are indeed the Giver of all bounties.',
                      duaStyle: GoogleFonts.dmSans(
                        fontSize: 15,
                        color: theme.colorScheme.inversePrimary,
                      ),
                      onTabSeeTranslation: () =>
                          cardKey.currentState?.toggleCard()),
                ),
                const SizedBox(height: 25),
              ],
            ),
          )
        ],
      ),
    );
  }
}
