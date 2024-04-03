import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    tealContainer(String text) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.tealAccent,
            style: BorderStyle.solid,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(7.0),
        child: Text(
          text,
          style: GoogleFonts.openSans(fontSize: 15.0),
        ),
      );
    }

    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.0, color: Colors.black),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black)),
                child: Image.asset('assets/image-circle.png'),
              ),
            ),
            TabsMobile(text: 'Home', route: '/'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: 'Work', route: '/works'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: 'Blog', route: '/blog'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: 'About', route: '/about'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: 'Contact', route: '/contact'),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse('https://www.instagram.com/_codersnook')),
                  icon: SvgPicture.asset(
                    'assets/instagram.svg',
                    width: 30.0,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse('https://www.instagram.com/_codersnook')),
                  icon: SvgPicture.asset(
                    'assets/twitter.svg',
                    width: 30.0,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse('https://www.instagram.com/_codersnook')),
                  icon: SvgPicture.asset(
                    'assets/github.svg',
                    width: 30.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 113.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    'assets/image-circle.png',
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SansBold('About me', 30.0),
                  SizedBox(height: 10.0),
                  Sans(
                      "Hello i'm Aqib Ayoub I specialize in flutter development",
                      15),
                  Sans(
                      "I strive to ensure astounding performance with state of",
                      15.0),
                  Sans("the art security for Android, Ios, Web, Mac, Linux",
                      15.0),
                  SizedBox(
                    height: 15.0,
                  ),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer('Flutter'),
                      tealContainer('Firebase'),
                      tealContainer('Android'),
                      tealContainer('Windows'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            // Second Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCardWeb(
                  imagePath: 'assets/webL.png',
                  width: 200.0,
                ),
                SizedBox(height: 30.0),
                SansBold('Web development', 20.0),
                SizedBox(height: 10.0)
              ],
            ),
            Sans(
                "i'm here to build your presence online with state of the art web apps",
                15.0),

            // second section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                AnimatedCardWeb(
                  imagePath: 'assets/app.png',
                  width: 200.0,
                  reverse: true,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold('App development', 20.0),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Sans(
                "Do you need a high-performance, responsive and beautiful app? I've got you covverd",
                15.0),
            SizedBox(height: 40.0),
            //Third section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                AnimatedCardWeb(
                  imagePath: 'assets/firebase.png',
                  width: 200.0,
                  reverse: true,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold('Back-end development', 20.0),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            Sans(
                "Do you want your back-end to be highly scalable and secure? Let's have a conversation on how I can help you with that ",
                15.0),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    ));
  }
}
