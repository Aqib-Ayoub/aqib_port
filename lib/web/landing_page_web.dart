import 'package:aqib_port/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
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

  var logger = Logger();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
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
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: SansBold('Hello i\'m ', 15),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SansBold('Aqib Ayoub', 55),
                    Sans('Flutter Developer', 30),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 10,
                        ),
                        Sans('contact@codersnook.in', 15),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 10),
                        Sans('+91 6005456915', 15)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 10,
                        ),
                        Sans('Bicherwara', 15),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/image-circle.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// Second Page
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/web.jpg',
                  height: widthDevice / 1.9,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold('About me', 40),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                        'Hello! I\'m Aqib Ayoub I specialize in flutter development',
                        15),
                    Sans(
                        'I strive to ensure astounding performance with state of',
                        15),
                    Sans(
                        'the art security for Android, Ios, Web, Linux and Windows ',
                        15),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Sans('Flutter', 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Sans('Android', 15),
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Sans('Ios', 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Sans('Windows', 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          /// Third Section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold('What I do?', 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWeb(
                      imagePath: 'assets/webL.png',
                      text: 'Web development',
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                      imagePath: 'assets/app.png',
                      text: 'App development',
                      fit: BoxFit.contain,
                    ),
                    AnimatedCardWeb(
                      imagePath: 'assets/firebase.png',
                      text: 'Back-end Development',
                      reverse: true,
                    ),
                  ],
                )
              ],
            ),
          ),

          /// Forth Section
          Container(
            height: heightDevice,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold('Contact me', 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          TextForm(
                              text: 'First name',
                              containerWidth: 350,
                              hintText: 'Please enter ist name',
                              controller: _firstNameController,
                              validator: (text) {
                                if (text.toString().isEmpty) {
                                  return 'First name is required';
                                }
                              }),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextForm(
                            text: 'Email',
                            containerWidth: 350,
                            hintText: 'Please enter your Email address',
                            controller: _emailController,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return 'email is required';
                              }
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextForm(
                            text: 'Last name',
                            containerWidth: 350,
                            hintText: 'Please enter your last name ',
                            controller: _lastNameController,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextForm(
                            text: 'Phone number',
                            containerWidth: 350,
                            hintText: 'Please enter your phone number',
                            controller: _phoneController,
                          ),
                        ],
                      ),
                    ],
                  ),
                  TextForm(
                    text: 'Message',
                    containerWidth: widthDevice / 1.5,
                    hintText: 'Please enter your message',
                    maxLines: 7,
                    controller: _messageController,
                    validator: (text) {
                      if (text.toString().isEmpty) {
                        return 'Message is required';
                      }
                    },
                  ),
                  MaterialButton(
                    onPressed: () {
                      var addData = new AddDataFirestore();
                      logger.d(_firstNameController);
                      if (formKey.currentState!.validate()) {
                        addData.addRespone(
                            _firstNameController.text,
                            _lastNameController.text,
                            _phoneController.text,
                            _emailController.text,
                            _messageController.text);
                        formKey.currentState!.reset();
                        DialogError(context);
                      }
                    },
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 60.0,
                    minWidth: 200.0,
                    color: Colors.tealAccent,
                    child: SansBold('Submit', 20.0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
