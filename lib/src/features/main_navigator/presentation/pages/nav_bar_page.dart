import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ny_times_app/src/features/main_pages/presentation/favourites/pages/favourite_page.dart';
import 'package:ny_times_app/src/features/main_pages/presentation/hotels/pages/hotel_page.dart';
import 'package:ny_times_app/src/features/main_navigator/presentation/bloc/nav_bar_bloc.dart';
import 'package:ny_times_app/src/features/main_navigator/presentation/bloc/nav_bar_event.dart';
import 'package:ny_times_app/src/features/main_navigator/presentation/bloc/nav_bar_state.dart';

class BottomNavigationPage extends StatelessWidget {
  BottomNavigationPage({Key? key}) : super(key: key);

  final List<Widget> _pages = [
    Container(),
    HotelPage(),
    FavHotelPage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationBloc(),
      child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          return Scaffold(
            body: _pages[state.currentIndex],
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Color(0xFFE0E0E0), width: 1.0))),
              child: NavigationBar(
                backgroundColor: Colors.white,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                destinations: [
                  NavigationDestination(
                    selectedIcon:
                        Icon(CupertinoIcons.heart, color: Color(0xFF050000)),
                    icon: Icon(CupertinoIcons.heart, color: Colors.grey),
                    label: 'Overview',
                  ),
                  NavigationDestination(
                    selectedIcon:
                        Icon(Icons.hotel_outlined, color: Color(0xFF050000)),
                    icon: Icon(Icons.hotel_outlined, color: Colors.grey),
                    label: 'Hotels',
                  ),
                  NavigationDestination(
                    selectedIcon:
                        Icon(CupertinoIcons.heart, color: Color(0xFF050000)),
                    icon: Icon(CupertinoIcons.heart, color: Colors.grey),
                    label: 'Favourites',
                  ),
                  NavigationDestination(
                    selectedIcon: Icon(CupertinoIcons.profile_circled,
                        color: Color(0xFF050000)),
                    icon: Icon(CupertinoIcons.profile_circled,
                        color: Colors.grey),
                    label: 'Profile',
                  ),
                ],
                selectedIndex: state.currentIndex,
                height: 56,
                onDestinationSelected: (index) => context
                    .read<BottomNavigationBloc>()
                    .add(BottomNavigationChanged(index)),
                indicatorColor: Colors.transparent,
              ),
            ),
          );
        },
      ),
    );
  }
}
