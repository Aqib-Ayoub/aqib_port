import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {

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

  @override
  Widget build(BuildContext context) {
    urlLauncher(String imagePath, String url) {
      return IconButton(
        icon: SvgPicture.asset(
          imagePath,
          color: Colors.black,
          width: 35,
        ),
        onPressed: () async {
          await launchUrl(Uri.parse(url));
        },
      );
    }

    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                backgroundImage: AssetImage('assets/image.png'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold('Aqib Ayoub', 30),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher('assets/instagram.svg',
                    'https://www.instagram.com/_codersnook/'),
                urlLauncher(
                  'assets/twitter.svg',
                  '#',
                ),
                urlLauncher('assets/github.svg', '#')
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black, size: 25),
        elevation: 0.0,
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb('Home', rout: '/'),
            Spacer(),
            TabsWeb('Works', rout: '/work'),
            Spacer(),
            TabsWeb('Blog', rout: '/blog'),
            Spacer(),
            TabsWeb('About', rout: '/about'),
            Spacer(),
            TabsWeb('Contact', rout: '/contact'),
            Spacer(),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          // About me
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold('About me', 40.0),
                    SizedBox(height: 15.0),
                    Sans(
                        'Hello i\'m Aqib Ayoub I specialize in flutter development',
                        15.0),
                    Sans(
                        "I strive to ensure astounding performance with state of",
                        15.0),
                    Sans(' the art security for Android, Ios, Web, Mac, Linux',
                        15.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        tealContainer('Flutter'),
                        SizedBox(width: 7.0),
                        tealContainer('Firebase'),
                        SizedBox(width: 7.0),
                        tealContainer('Android'),
                        SizedBox(width: 7.0),
                        tealContainer('Ios'),
                        SizedBox(width: 7.0),
                        tealContainer('Windows'),
                      ],
                    ),
                  ],
                ),
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
                        "assets/image-circle.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Web development
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWeb(
                imagePath: 'assets/webL.png',
                width: 250.0,
                height: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold('Web development', 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        'I\'m here to build your presence online with state of the art web apps',
                        15.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold('App development', 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        'Do you need a high-performance, responsib=ve and beautiful app? Don\'t worry, I\'ve got you coverd',
                        15.0),
                  ],
                ),
              ),
              AnimatedCardWeb(
                reverse: true,
                imagePath: 'assets/app.png',
                width: 250.0,
                height: 250.0,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWeb(
                imagePath: 'assets/firebase.png',
                width: 250.0,
                height: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold('Back-end development', 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                        'Do you want your back-end to be highly scalable and secure? Let\'s have a conversation on how I can help you with that',
                        15.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0)
        ],
      ),
    );
  }
}
