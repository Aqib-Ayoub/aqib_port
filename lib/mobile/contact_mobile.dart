import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 400.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 35.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/contact_image.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              SansBold('Contact me', 35.4),
              TextForm(
                  text: 'First Name',
                  containerWidth: widthDevice / 1.4,
                  hintText: 'Please type first name'),
              TextForm(
                  text: 'Last Name',
                  containerWidth: widthDevice / 1.4,
                  hintText: 'Please type last name'),
              TextForm(
                  text: 'Email',
                  containerWidth: widthDevice / 1.4,
                  hintText: 'Please type email '),
              TextForm(
                  text: "Phone Number",
                  containerWidth: widthDevice / 1.4,
                  hintText: 'Please type phone number'),
              TextForm(
                text: 'Message',
                containerWidth: widthDevice / 1.4,
                hintText: 'Please type your message',
                maxLines: 10,
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: widthDevice / 2.2,
                color: Colors.tealAccent,
                child: SansBold('Submit', 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
