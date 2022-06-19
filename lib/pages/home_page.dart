import 'package:car_app/utils/app_bar.dart';
import 'package:car_app/utils/brands.dart';
import 'package:car_app/utils/cards.dart';
import 'package:car_app/utils/searchbar.dart';
import 'package:car_app/utils/topics.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        elevation: 0,
        iconSize: 30,

        // backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const AppBarr(),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Let\'s find your favourite           car here',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      // color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SearchBar(),
                const SizedBox(
                  height: 20,
                ),
                const Topics(
                  name: 'Trending Brands',
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Brands(
                        value: 1,
                        name: 'Suzuki',
                      ),
                      Brands(
                        value: 2,
                        name: 'Ferrari',
                      ),
                      Brands(
                        value: 3,
                        name: 'Nissan',
                      ),
                      Brands(
                        value: 4,
                        name: 'Audi',
                      ),
                      Brands(
                        value: 6,
                        name: 'Mercedes',
                      ),
                      Brands(
                        value: 5,
                        name: 'BMW',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Topics(name: 'New Cars'),
                SizedBox(
                  height: 300,
                  child: ListView(
                    children: const [
                      Cards(
                        imgpath: 'assets/images/x5.png',
                        name: 'BMw x5',
                        price: '\$450/Day',
                      ),
                      Cards(
                        imgpath: 'assets/images/mc.png',
                        name: 'G-class',
                        price: '\$425/Day',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
