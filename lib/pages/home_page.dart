import 'package:flutter/material.dart';
import 'package:starwars_coffee/components/bottom_nav_bar.dart';
import 'package:starwars_coffee/const.dart';

import 'cart_page.dart';
import 'shop_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//navigate bottom bar
int _selectedindex = 0;
void navigateBottomBar(int index){
setState(() {
  _selectedindex = index;
});  
}

//pages
final List<Widget> pages  = [
  
//shop page
  ShopPage(),

//cart page
  CartPage(),
];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: pages[_selectedindex],
      
    );
  }
}