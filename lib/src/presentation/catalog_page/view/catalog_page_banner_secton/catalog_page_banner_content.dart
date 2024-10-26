import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/app_color.dart';

class CatalogBannerContent extends StatelessWidget {
  const CatalogBannerContent({super.key});

  //....CONTANTS
  static const catalogBannerImage =
      'assets/images/catalog_page_banner_image.png';
  static const imageWidth = 0.3;

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CatalogBannerHeading(),
            CatalogBannerDescription(),
          ],
        ),
        Image.asset(
          'assets/images/catalog_page_banner_image.png',
          width: width * imageWidth,
        )
      ],
    );
  }
}

class CatalogBannerHeading extends StatelessWidget {
  const CatalogBannerHeading({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
      fontSize: width * 0.03,
      color: ApplicationColors.lightBlueThemeColor,
      fontWeight: FontWeight.bold,
    );

    return Padding(
      padding: EdgeInsets.only(
        bottom: width * 0.01,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Your Gateway to', style: textStyle),
          Text('Exceptional Products', style: textStyle),
        ],
      ),
    );
  }
}

class CatalogBannerDescription extends StatelessWidget {
  const CatalogBannerDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width) = MediaQuery.sizeOf(context);
    final textStyle = GoogleFonts.quicksand(
        fontSize: width * 0.012,
        letterSpacing: 1,
        height: width * 0.0012,
        color: ApplicationColors.appBlackTextColor,
        fontWeight: FontWeight.w500);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(style: textStyle, children: const [
        TextSpan(text: "Welcome to our catalog, where quality meets\n"),
        TextSpan(text: "variety. Explore a carefully curated selection\n"),
        TextSpan(text: "of exceptional products designed to inspire\n"),
        TextSpan(text: "and enhance your lifestyle.\n"),
      ]),
    );
  }
}