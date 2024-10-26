import 'package:cas_website/core/bavel.dart';

class HomePageShowcaseBackground extends StatelessWidget {
  const HomePageShowcaseBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/rectangle_straight.png'),
                fit: BoxFit.fill),
          ),
          child: SizedBox(
            width: width,
            height: height * 0.8,
          ),
        ),
        SizedBox(height: height * 0.4),
      ],
    );
  }
}
