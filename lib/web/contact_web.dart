import 'package:aqib_port/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/image.png'),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold('Aqib Ayoub', 30.0),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/instagram.svg',
                    color: Colors.black,
                    width: 35,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 400.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/contact_image.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb('Home', rout: '/'),
                  Spacer(),
                  TabsWeb('Works', rout: '/works'),
                  Spacer(),
                  TabsWeb('Blog', rout: '/blog'),
                  Spacer(),
                  TabsWeb('About', rout: '/about'),
                  Spacer(),
                  TabsWeb('Contact'),
                  Spacer(),
                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              SansBold('Contact me', 40.0),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextForm(
                          text: 'First Name',
                          containerWidth: 350.0,
                          hintText: 'Please type first name'),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextForm(
                          text: 'Email',
                          containerWidth: 350.0,
                          hintText: 'Please type email '),
                    ],
                  ),
                  Column(
                    children: [
                      TextForm(
                          text: "Last Name",
                          containerWidth: 350.0,
                          hintText: 'Please type last name'),
                      SizedBox(height: 15.0),
                      TextForm(
                          text: 'Phone Number',
                          containerWidth: 350.0,
                          hintText: 'Please type phone number'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.0),
              TextForm(
                text: 'Message',
                containerWidth: widthDevice / 1.5,
                hintText: 'Please type your message',
                maxLines: 10,
              ),
              SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                color: Colors.tealAccent,
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                height: 60.0,
                minWidth: 200.0,
                child: SansBold('Submit', 20.0),
              ),
              SizedBox(height: 10.0)
            ],
          ),
        ),
      ),
    );
  }
}
