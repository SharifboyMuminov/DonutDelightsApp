import 'package:donut_delights_app/extensions/context_extensions.dart';
import 'package:donut_delights_app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final PageController _pageController = PageController();

  Future<void> _start() async {
    await Future.delayed(Duration(seconds: 2));
    _pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.linear,
    );

    await Future.delayed(Duration(seconds: 2));
    if (!context.mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return HomePage();
        },
      ),
    );
  }

  @override
  void initState() {
    _start();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Stack(
            alignment: AlignmentGeometry.bottomCenter,
            children: [
              Container(
                width: context.width,
                height: context.height,
                color: Color(0xFFFF647D),
              ),
              Image.asset("assets/images/splash_image.png"),
              Align(
                alignment: AlignmentGeometry.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset("assets/icons/splash_icon.svg"),
                    SizedBox(height: 9),
                    Text(
                      "Donut Delights",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/images/img.png",
            width: context.width,
            height: context.height,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
