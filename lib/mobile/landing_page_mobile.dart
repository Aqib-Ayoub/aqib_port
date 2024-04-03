import 'package:aqib_port/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
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
    var widthDevice = MediaQuery.of(context).size.width;
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
        body: ListView(
          children: [
            ///First section
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 117.0,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 110.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/image-circle.png'),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: SansBold('Hello i\'m ', 15.0),
                      ),
                      SansBold('Aqib Ayoub', 40.0),
                      SansBold('Flutter developer', 20.0),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 3.0,
                        children: [
                          Icon(Icons.email),
                          Icon(Icons.call),
                          Icon(Icons.location_pin),
                        ],
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9.0,
                        children: [
                          Sans('support.codersnook.in', 15.0),
                          Sans('+91 6005456915', 15.0),
                          Sans('13/1, Bicherwara, Kashmir', 15.0)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),

            ///About me,
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SansBold('About me', 30.0),
                  Sans(
                      "Hello i'm Aqib Ayoub I specialize in flutter development",
                      15),
                  Sans(
                      "I strive to ensure astounding performance with state of",
                      15.0),
                  Sans("the art security for Android, Ios, Web, Mac, Linux",
                      15.0),
                  SizedBox(
                    height: 10.0,
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
            SizedBox(
              height: 60.0,
            ),

            /// what i do,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold('What i do?', 35),
                AnimatedCardWeb(
                  imagePath: 'assets/webL.png',
                  text: 'Web development',
                  width: 300.0,
                ),
                SizedBox(
                  height: 35,
                ),
                AnimatedCardWeb(
                  reverse: true,
                  imagePath: 'assets/app.png',
                  text: 'App development',
                  width: 300.0,
                ),
                SizedBox(
                  height: 35,
                ),
                AnimatedCardWeb(
                  imagePath: 'assets/firebase.png',
                  text: 'Back-end development',
                  width: 300.0,
                ),
                SizedBox(
                  height: 60,
                ),

                ///Contact form
                Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  alignment: WrapAlignment.center,
                  children: [
                    SansBold('Contact me', 35.0),
                    TextForm(
                        text: 'First name',
                        containerWidth: widthDevice / 1.4,
                        hintText: 'Please type first name'),
                    TextForm(
                        text: 'Last name',
                        containerWidth: widthDevice / 1.4,
                        hintText: 'Please type Last name'),
                    TextForm(
                        text: 'Email',
                        containerWidth: widthDevice / 1.4,
                        hintText: 'Please type email address'),
                    TextForm(
                        text: 'Phone number',
                        containerWidth: widthDevice / 1.4,
                        hintText: 'Please type phone'),
                    TextForm(
                      text: 'Message',
                      containerWidth: widthDevice / 1.4,
                      hintText: 'Message',
                      maxLines: 10,
                    ),
                    MaterialButton(
                      elevation: 20.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 60.0,
                      minWidth: widthDevice / 2.2,
                      color: Colors.tealAccent,
                      child: SansBold('Submit', 20.0),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
