import 'package:cas_website/core/app_button.dart';
import 'package:cas_website/core/app_color.dart';
import 'package:cas_website/core/app_snack_bar.dart';
import 'package:cas_website/src/presentation/about_page/view/about_page.dart';
import 'package:cas_website/src/presentation/academy_page/view/academy_page.dart';
import 'package:cas_website/src/presentation/catalog_page/view/catalog_page.dart';
import 'package:cas_website/src/presentation/home_page/view/widgets/home_page_app_bar.dart';
import 'package:cas_website/src/presentation/services_page/view/services_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CareersPageAppBar extends AppBar {
  final BuildContext context;
  CareersPageAppBar({super.key, required this.context})
      : super(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => context.pop(),
                  child: Image.asset(
                    'assets/images/cas_logo_two.png',
                    width: kTextTabBarHeight,
                  ),
                ),
              ),
              Row(
                children: [
                  OverflowBar(
                    children: [
                      HomePageToolBarItemWidget(
                          text: 'Academy',
                          onPressed: () =>
                              context.go('/${AcademyPage.pageAddress}')),
                      HomePageToolBarItemWidget(
                          text: 'Services',
                          onPressed: () =>
                              context.go('/${ServicesPage.pageAddress}')),
                      HomePageToolBarItemWidget(
                          text: 'Catalog',
                          onPressed: () =>
                              context.go('/${CatalogPage.pageAddress}')),
                      HomePageToolBarItemWidget(
                          text: 'About',
                          onPressed: () =>
                              context.go('/${AboutPage.pageAddress}')),
                    ],
                  )
                ],
              ),
              Builder(
                builder: (context) {
                  return AppButton(
                    buttonText: ' Contact Us ',
                    textSize: 13,
                    onTap: () {
                      ApplicationSnackBar.getSnackBar(
                        context: context,
                        text: 'Contact us Dialog',
                      );
                    },
                  );
                },
              ),
            ],
          ),
          toolbarHeight: kToolbarHeight,
          backgroundColor: ApplicationColors.appWhiteTextColor,
          surfaceTintColor: ApplicationColors.appWhiteTextColor,
        );
}
