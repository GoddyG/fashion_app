import 'package:fashion_a_pp/home/widget/best_sell.dart';
import 'package:fashion_a_pp/home/widget/categories_list.dart';
import 'package:fashion_a_pp/home/widget/clothes_item.dart';
import 'package:fashion_a_pp/home/widget/custom_app_bar.dart';
import 'package:fashion_a_pp/home/widget/new_arrival.dart';
import 'package:fashion_a_pp/home/widget/search_input.dart';
import 'package:fashion_a_pp/models/clothes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  int _currentIndex = 0;

  final bottomList = ['home', 'menu', 'favorite','profile'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SearchInput(),
              NewArrival(),
              BestSell()
            ],
          ),
        ),
    // bottomNavigationBar: BottomNavigationBar(
    // showSelectedLabels: false,
    //   showUnselectedLabels: false,
    //   type: BottomNavigationBarType.fixed,
    //   items:
    //     bottomList.map((e) => BottomNavigationBarItem(
    //         label: e,
    //         icon: Icon(Icons.home_outlined))).toList()
    //
    // ),

      bottomNavigationBar: BottomNavigationBar(// new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            title: Text('Notification'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text('Profile')
          ),

        ],
      ),
    );
  }
}
