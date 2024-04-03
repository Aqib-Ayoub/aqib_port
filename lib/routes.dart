

import 'package:aqib_port/mobile/about_mobile.dart';
import 'package:aqib_port/mobile/blog_mobile.dart';
import 'package:aqib_port/mobile/contact_mobile.dart';
import 'package:aqib_port/mobile/landing_page_mobile.dart';
import 'package:aqib_port/web/about_web.dart';
import 'package:aqib_port/web/blog_web.dart';
import 'package:aqib_port/web/contact_web.dart';
import 'package:aqib_port/web/landing_page_web.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constrains) {
              if (constrains.maxWidth > 800) {
                return LandingPageWeb();
              } else
                return LandingPageMobile();
            },
          ),
        );
      case '/contact':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constrains) {
                  if (constrains.maxWidth > 800) {
                    return ContactWeb();
                  } else
                    return ContactMobile();
                }),
            settings: settings);
      case '/about':
        return MaterialPageRoute(
            builder: (_) => LayoutBuilder(builder: (context, constrains) {
                  if (constrains.maxWidth > 800) {
                    return AboutWeb();
                  } else
                    return AboutMobile();
                }),
            settings: settings);
      case '/blog':
        return MaterialPageRoute(builder: (_)=>LayoutBuilder(builder: (context, constrains){
          if(constrains.maxWidth > 800){
            return BlogWeb();

          }
          else
            return BlogMobile();
        }),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constrains) {
              if (constrains.maxWidth > 800) {
                return LandingPageWeb();
              } else
                return LandingPageMobile();
            },
          ),
        );
    }
  }
}
