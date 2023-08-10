import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:planet_animatons/utiles/routes_utiles.dart';

class splash_Page extends StatefulWidget {
  const splash_Page({super.key});

  @override
  State<splash_Page> createState() => _splash_PageState();
}

class _splash_PageState extends State<splash_Page> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      Navigator.of(context).pushReplacementNamed(AllRoutes.homePage);
      timer.cancel();
    });
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bgsplashe.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 2,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const Spacer(flex: 1),
                // SizedBox(height: s.height * 0.02),
                Text(
                  "Planets Info",
                  style: GoogleFonts.chakraPetch(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: s.height * 0.03,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(height: s.height * 0.05),
                Container(
                  height: s.height * 0.3,
                  width: s.width,
                  decoration: const BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/splash.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                LoadingAnimationWidget.fallingDot(
                  color: Colors.white,
                  size: 120,
                ),
                // const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
