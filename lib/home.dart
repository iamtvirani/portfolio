// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:io';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:marqueer/marqueer.dart';
import 'package:prtfolio_web/routes.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:neopop/neopop.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final advancedDrawerController = AdvancedDrawerController();

    void _handleMenuButtonPressed() {
      advancedDrawerController.showDrawer();
    }

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    snack() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Something went wrong"),
        ),
      );
    }

    return /* AdvancedDrawer(
      backdropColor: Color.fromARGB(255, 0, 0, 0),
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      openRatio: 0.35,
      disabledGestures: false,
      child: */
        Scaffold(
            appBar: AppBar(
              // leading: IconButton(
              //   onPressed: _handleMenuButtonPressed,
              //   icon: ValueListenableBuilder<AdvancedDrawerValue>(
              //     valueListenable: advancedDrawerController,
              //     builder: (_, value, __) {
              //       return AnimatedSwitcher(
              //         duration: Duration(seconds: 1),
              //         child: Icon(
              //           value.visible ? Icons.clear : Icons.menu,
              //           key: ValueKey<bool>(value.visible),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              title: Text(
                'TULSI VIRANI',
                style: GoogleFonts.yujiBoku(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.0,
                  ),
                ),
              ),

              centerTitle: false,
              // backgroundColor: Color.fromARGB(255, 17, 17, 17),
              backgroundColor: Colors.transparent,
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              scrolledUnderElevation: 5,
              toolbarHeight: 72,
              actions: [
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () async {
                        // //https://drive.google.com/file/d/1x0Y85TnnOGuFFc5YkloDwifJMDG72S0U/view
                        // var urllaunchable = await canLaunchUrl(
                        //     Uri.https("drive.google.com", "/file/d/1x0Y85TnnOGuFFc5YkloDwifJMDG72S0U/view"));
                        // if (urllaunchable) {
                        //   await launchUrl(Uri.https("drive.google.com", "/file/d/1x0Y85TnnOGuFFc5YkloDwifJMDG72S0U/view"));
                        // } else {
                        //   snack();
                        // }
                      },
                      label: Text(
                        "+91 1236985740",
                        style: GoogleFonts.bungeeHairline(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: MediaQuery.of(context).size.width / 60,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                      icon: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width / 60,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () async {
                        // //https://readymag.com/gauransh18/4239311/
                        // var urllaunchable = await canLaunchUrl(Uri.https("dribbble.com", "/gauransh18"));
                        // if (urllaunchable) {
                        //   await launchUrl(Uri.https("dribbble.com", "/gauransh18"));
                        // } else {
                        //   snack();
                        // }
                      },
                      label: Text(
                        " viranitulsi153@gmail.com",
                        style: GoogleFonts.bungeeHairline(
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.0,
                          ),
                        ),
                      ),
                      icon: Icon(Icons.mail, color: Colors.white),
                    ),
                  ],
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(1.0),
                child: Container(
                  color: Color.fromARGB(255, 55, 66, 79),
                  child: Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromARGB(255, 55, 66, 79),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 17, 17, 17),
            body: Stack(
              children: [
                const SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: GridPaper(
                    color: Color.fromARGB(255, 48, 97, 188),
                    interval: 100,
                    subdivisions: 1,
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 66, 20, 20),
                                  child:
                                      //FittedBox(
                                      //fit: BoxFit.fitWidth,
                                      // child:
                                      Center(
                                    child: Text(
                                      'hi, i\'m Tulsi',
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(255, 255, 255, 255),
                                          fontSize: 80,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  //  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                                  child: Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      '  Flutter developer With 3+ Years Experience',
                                      style: GoogleFonts.abel(
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(255, 255, 255, 255),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: NeoPopButton(
                                      color: Colors.white,
                                      rightShadowColor: Color.fromARGB(255, 135, 163, 177),
                                      bottomShadowColor: Colors.blueGrey,
                                      onTapUp: () {
                                        Navigator.of(context).pushNamed(formRoute);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                                        child: Text(
                                          "Got a project? Let's talk!",
                                          style: GoogleFonts.gruppo(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 33,
                                      ),
                                      Text(
                                        "I can ",
                                        style: GoogleFonts.abel(
                                          textStyle: TextStyle(
                                            color: Color.fromARGB(255, 255, 255, 255),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                      ),
                                      AnimatedTextKit(
                                        displayFullTextOnTap: true,
                                        repeatForever: true,
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                            'build cross-platform apps',
                                            textStyle: GoogleFonts.abel(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(255, 255, 255, 255),
                                                fontSize: 24,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            'optimize app performance',
                                            textStyle: GoogleFonts.abel(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(255, 255, 255, 255),
                                                fontSize: 24,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            'integrate APIs seamlessly',
                                            textStyle: GoogleFonts.abel(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(255, 255, 255, 255),
                                                fontSize: 24,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            'create custom UI designs',
                                            textStyle: GoogleFonts.abel(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(255, 255, 255, 255),
                                                fontSize: 24,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            'develop with Flutter and Dart',
                                            textStyle: GoogleFonts.abel(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(255, 255, 255, 255),
                                                fontSize: 24,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            'build responsive layouts',
                                            textStyle: GoogleFonts.abel(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(255, 255, 255, 255),
                                                fontSize: 24,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            'integrate Firebase services',
                                            textStyle: GoogleFonts.abel(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(255, 255, 255, 255),
                                                fontSize: 24,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ),
                                          TypewriterAnimatedText(
                                            'launch your app to stores',
                                            textStyle: GoogleFonts.abel(
                                              textStyle: TextStyle(
                                                color: Color.fromARGB(255, 255, 255, 255),
                                                fontSize: 24,
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 0.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/flutter_dash.png")
                        ],
                      ),
                      SizedBox(
                        height: 100,
                        child: Marqueer(
                          interaction: false,
                          pps: 32,
                          direction: MarqueerDirection.ltr,
                          restartAfterInteractionDuration: const Duration(seconds: 3),
                          child: Row(
                            children: [
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "assets/aws.png",
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "AWS",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            'assets/git.png',
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "Git",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "assets/flutter.png",
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "Flutter",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "assets/swift.png",
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "Swift",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "assets/kotlin.png",
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "Kotlin",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "assets/dart.png",
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "Dart",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            "assets/cpp.png",
                                            fit: BoxFit.contain,
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "C++",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: Marqueer(
                          interaction: false,
                          pps: 31,
                          direction: MarqueerDirection.rtl,
                          restartAfterInteractionDuration: const Duration(seconds: 3),
                          child: Row(
                            children: [
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            'assets/github.png',
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "GitHub",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            'assets/jira.png',
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "Jira",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                                          child: Image.asset(
                                            "assets/figma.png",
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "figma",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            'assets/gitlab.png',
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "GitLab",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            'assets/slack.png',
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "Slack",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            'assets/source_tree.png',
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "SourceTree",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 100,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            'assets/firebase.png',
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 8, 16, 8),
                                      child: Text(
                                        "Firebase",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Card(
                                elevation: 3,
                                shadowColor: Color.fromARGB(255, 100, 99, 99),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color.fromARGB(255, 0, 0, 0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 80,
                                        height: 75,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                            'assets/supabase.png',
                                          ),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(4, 0, 16, 8),
                                      child: Text(
                                        "Supabase",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (height - width > 200) ? height - width - 100 : 200,
                      ),
                      Stack(
                        children: [
                          // Container(
                          //   height: width / 5,
                          //   width: double.infinity,
                          //   decoration: BoxDecoration(
                          //     image: DecorationImage(
                          //         fit: BoxFit.contain,
                          //         image: AssetImage('assets/gaura.png')),
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("made with", style: GoogleFonts.abel(color: Colors.white, fontSize: 22)),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                SizedBox(width: 10),
                                Text("by Tulsi Virani", style: GoogleFonts.abel(color: Colors.white, fontSize: 22)),
                                SizedBox(width: 10),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
            // drawer: SafeArea(
            //   child: Container(
            //     child: ListTileTheme(
            //       textColor: Colors.white,
            //       iconColor: Colors.white,
            //       child: ListView(
            //         // mainAxisSize: MainAxisSize.max,
            //         children: [
            //           Container(
            //             width: double.infinity,
            //             height: 200.0,
            //             // margin: const EdgeInsets.only(
            //             //   top: 24.0,
            //             //   bottom: 64.0,
            //             // ),
            //             // clipBehavior: Clip.antiAlias,
            //             // decoration: BoxDecoration(
            //             //   color: Colors.black26,
            //             //   shape: BoxShape.circle,
            //             // ),
            //             child: Image.asset(
            //               'assets/imposter.gif',
            //               fit: BoxFit.fitHeight,
            //             ),
            //           ),
            //           NeoPopButton(
            //             //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
            //             //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
            //             color: Color.fromARGB(255, 255, 255, 255),
            //
            //             onTapUp: () async {
            //               var urllaunchable = await canLaunchUrl(Uri.https("linkedin.com", "/in/gauransh18"));
            //               if (urllaunchable) {
            //                 await launchUrl(Uri.https("linkedin.com", "/in/gauransh18"));
            //               } else {
            //                 snack();
            //               }
            //             },
            //             child: Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Text("linkedin",
            //                       style: GoogleFonts.abel(
            //                         color: Color.fromARGB(255, 0, 0, 0),
            //                         fontSize: 22,
            //                       )),
            //                 ],
            //               ),
            //             ),
            //           ),
            //           SizedBox(height: 15),
            //           NeoPopButton(
            //             //   bottomShadowColor: Colors.orange,
            //             // rightShadowColor: Color.fromARGB(255, 67, 248, 146),
            //             color: Color.fromARGB(255, 255, 255, 255),
            //
            //             onTapUp: () async {
            //               var urllaunchable = await canLaunchUrl(Uri.https("t.me", "/gauransh18"));
            //               if (urllaunchable) {
            //                 await launchUrl(Uri.https("t.me", "gauransh18"));
            //               } else {
            //                 snack();
            //               }
            //             },
            //             child: Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Text("telegram",
            //                       style: GoogleFonts.abel(
            //                         color: Color.fromARGB(255, 0, 0, 0),
            //                         fontSize: 22,
            //                       )),
            //                 ],
            //               ),
            //             ),
            //           ),
            //           SizedBox(height: 15),
            //           NeoPopButton(
            //             //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
            //             //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
            //             color: Color.fromARGB(255, 255, 255, 255),
            //
            //             onTapUp: () async {
            //               var urllaunchable = await canLaunchUrl(Uri.https("instagram.com", "/gauransh18_"));
            //               if (urllaunchable) {
            //                 await launchUrl(Uri.https("instagram.com", "/gauransh18_"));
            //               } else {
            //                 snack();
            //               }
            //             },
            //             child: Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Text("instagram",
            //                       style: GoogleFonts.abel(
            //                         color: Color.fromARGB(255, 0, 0, 0),
            //                         fontSize: 22,
            //                       )),
            //                 ],
            //               ),
            //             ),
            //           ),
            //           SizedBox(height: 15),
            //           NeoPopButton(
            //             //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
            //             //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
            //             color: Color.fromARGB(255, 255, 255, 255),
            //
            //             onTapUp: () async {
            //               var urllaunchable = await canLaunchUrl(Uri.https("github.com", "/gauransh18"));
            //               if (urllaunchable) {
            //                 await launchUrl(Uri.https("github.com", "/gauransh18"));
            //               } else {
            //                 snack();
            //               }
            //             },
            //             child: Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Text("github",
            //                       style: GoogleFonts.abel(
            //                         color: Color.fromARGB(255, 12, 12, 12),
            //                         fontSize: 22,
            //                       )),
            //                 ],
            //               ),
            //             ),
            //           ),
            //           SizedBox(height: 15),
            //           NeoPopButton(
            //             //bottomShadowColor: Color.fromARGB(255, 225, 225, 225),
            //             //rightShadowColor: Color.fromARGB(255, 255, 255, 255),
            //             color: Color.fromARGB(255, 255, 255, 255),
            //
            //             onTapUp: () async {
            //               var urllaunchable = await canLaunchUrl(Uri.https("twitter.com", "/gauransh18"));
            //               if (urllaunchable) {
            //                 await launchUrl(Uri.https("twitter.com", "/gauransh18_"));
            //               } else {
            //                 snack();
            //               }
            //             },
            //             child: Padding(
            //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Text("twitter",
            //                       style: GoogleFonts.abel(
            //                         color: Color.fromARGB(255, 0, 0, 0),
            //                         fontSize: 22,
            //                       )),
            //                 ],
            //               ),
            //             ),
            //           ),
            //           // SizedBox(
            //           //   height: height-444,
            //           // ),
            //           // DefaultTextStyle(
            //           //   style: TextStyle(
            //           //     fontSize: 12,
            //           //     color: Colors.white54,
            //           //   ),
            //           //   child: Container(
            //           //     margin: const EdgeInsets.symmetric(
            //           //       vertical: 16.0,
            //           //     ),
            //           //     child: Text('Terms of Service | Privacy Policy'),
            //           //   ),
            //           // ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            );
  }
}
