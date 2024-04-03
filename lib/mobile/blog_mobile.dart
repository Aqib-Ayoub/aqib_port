import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart ';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_core/firebase_core.dart';

import '../components.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  // List title = ['who is Dasg1', 'who is dash2'];
  // List body = ['just google it and', 'search it on google'];
  // void article() async {
  //   await FirebaseFirestore.instance
  //       .collection('article')
  //       .get()
  //       .then((querySnapshort) {
  //     querySnapshort.docs.forEach((element) {
  //       //print(element.data()['body']);
  //     });
  //   });
  // }
  //
  // void streamArticle() async {
  //   var logger = Logger();
  //
  //   await for (var snapshot
  //       in FirebaseFirestore.instance.collection('article').snapshots()) {
  //     for (var title in snapshot.docs) {
  //       logger.d(title.data()['title']);
  //     }
  //   }
  // }
  //
  // @override
  // void initState() {
  //   //article();
  //   streamArticle();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 35.0,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.0,
                  ),
                  child: AbleCustom(
                    text: 'Welcome to my blog',
                    size: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Image.asset(
                  'assets/blog.jpg',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
              expandedHeight: 400.0,
            )
          ];
        },
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('article').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    DocumentSnapshot documentSnapshot =
                        snapshot.data!.docs[index];
                    return BlogPost(
                        title: documentSnapshot['title'],
                        body: documentSnapshot['body']);
                  });
            } else
              return Center(
                child: CircularProgressIndicator(),
              );
          },
        ),
      ),
    ));
  }
}

class BlogPost extends StatefulWidget {
  final title;
  final body;
  const BlogPost({super.key, @required this.title, @required this.body});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
              style: BorderStyle.solid, width: 1.0, color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: AbleCustom(
                    text: widget.title.toString(),
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(
                        () {
                          expand = !expand;
                        },
                      );
                    },
                    icon: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Colors.black,
                    ))
              ],
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(
              widget.body.toString(),
              style: GoogleFonts.openSans(fontSize: 15.0),
              maxLines: expand == true ? null : 2,
              overflow:
                  expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
