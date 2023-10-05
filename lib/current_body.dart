import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app/core/utils/constants.dart';
import 'package:shop_app/features/cart/presentation/views/cart_view.dart';
import 'package:shop_app/features/home/presentation/views/home_view.dart';
import 'package:shop_app/features/market/presentation/views/add_product_view.dart';
import 'package:shop_app/features/setting/presentation/view/account_view.dart';

class CurrentBody extends StatefulWidget {
  const CurrentBody({super.key});

  @override
  State<CurrentBody> createState() => _CurrentBodyState();
}

class _CurrentBodyState extends State<CurrentBody> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> bodyViews = const [
    HomeView(),
    CartView(),
    AddProductView(),
    AccountView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_business_outlined),
              label: 'Sell',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          //type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: kPrimaryColor,
          showUnselectedLabels: true,
          unselectedItemColor: const Color(0xff444444),
          iconSize: 22.sp,
          onTap: _onItemTapped,
          elevation: 10),
      body: bodyViews[_selectedIndex],
    );
  }
}
