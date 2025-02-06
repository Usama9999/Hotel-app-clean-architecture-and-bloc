import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ny_times_app/src/features/main_navigator/presentation/pages/nav_bar_page.dart';
import 'package:ny_times_app/src/shared/presentation/pages/photo_view_page.dart';
import 'package:ny_times_app/src/shared/presentation/pages/web_view_page.dart';
import 'package:ny_times_app/src/features/main_pages/presentation/hotels/pages/hotel_page.dart';

class AppRouter {
  static String currentRoute = "/";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    currentRoute = settings.name ?? "/";
    switch (settings.name) {
      // Ny Times Articles page
      case '/articles_page':
        return CupertinoPageRoute(
          settings: RouteSettings(name: settings.name),
          builder: (_) => const HotelPage(),
        );

      // Web view page
      case '/web_view_page':
        return CupertinoPageRoute(
          settings: RouteSettings(name: settings.name),
          builder: (_) => WebViewPage(
            link: settings.arguments as String,
          ),
        );
      case '/nav_bar':
        return CupertinoPageRoute(
          settings: RouteSettings(name: settings.name),
          builder: (_) => BottomNavigationPage(),
        );

      // Photo view page
      case '/photo_view_page':
        return CupertinoPageRoute(
          settings: RouteSettings(name: settings.name),
          builder: (_) {
            Map<String, dynamic>? args =
                settings.arguments as Map<String, dynamic>?;
            assert(args != null, "You should pass 'path' and 'fromNet'");
            return PhotoViewPage(
              path: args!['path'],
              fromNet: args['fromNet'],
            );
          },
        );

      default:
        return CupertinoPageRoute(
          settings: RouteSettings(name: settings.name),
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
