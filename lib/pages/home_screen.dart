import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:srap/pages/home_page.dart';
import 'package:srap/pages/order_history.dart';
import 'package:srap/pages/order_status.dart';
import 'package:srap/pages/profile_screen.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late int currentIndex;
  late PageController _pageController;

  @override
  void initState() {

    super.initState();
    currentIndex = 0;
    _pageController = PageController();
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;

    });
  }
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
            children: <Widget>[
             HomePage(),
             OrderStatusScreen(),
              OrderHistoryScreen(),
              ProfileScreen()


            ],
          ),
        ),






        bottomNavigationBar: BottomNavyBar(

          selectedIndex: currentIndex,

          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) {
            setState(() => currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home',style: TextStyle(color: Colors.black),),
                activeColor: Color(0XFF38c6b3),
                inactiveColor:  Colors.black
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.bookmark_border,),
                title: Text('Order Status',style: TextStyle(color: Colors.black),),
                activeColor: Color(0XFF38c6b3),
                inactiveColor:  Colors.black
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.history_rounded,),
                title: Text('History',style: TextStyle(color: Colors.black),),
                activeColor: Color(0XFF38c6b3),
                inactiveColor:  Colors.black
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.person,),
                title: Text('Profile',style: TextStyle(color: Colors.black),),
                activeColor: Color(0XFF38c6b3),
                inactiveColor: Colors.black
            ),
          ],
        )






    );
  }
}
