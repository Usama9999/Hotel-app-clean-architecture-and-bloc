import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ny_times_app/core/router/app_route_enum.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 1,
      ),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRouteEnum.navBar.name,
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(15.sp),
            child: Text(
              'Nearby Hotels',
              style: Theme.of(context).textTheme.titleLarge,
            )),
      ),
    );
  }
}
