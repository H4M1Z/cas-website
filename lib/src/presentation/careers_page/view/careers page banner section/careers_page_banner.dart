import 'package:cas_website/src/presentation/careers_page/view/careers%20page%20banner%20section/careers_page_banner_content.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home%20page%20banner%20section/home_page_banner_background.dart';
import 'package:flutter/material.dart';

class CareersPageBannerWidget extends StatelessWidget {
  const CareersPageBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        HomePageBannerBackground(),
        CareersPageBannerContent(),
      ],
    );
  }
}
