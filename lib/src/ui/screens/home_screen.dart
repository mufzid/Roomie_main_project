import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:romiee_mainproject/src/ui/widgets/home_screen/city_card.dart';
import 'package:romiee_mainproject/src/ui/widgets/home_screen/city_name_label.dart';
import 'package:romiee_mainproject/src/ui/widgets/home_screen/room_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GNav(
          color: Colors.black,
          activeColor: Color.fromARGB(255, 209, 52, 91),
          gap: 4,
          tabs: [
            GButton(
              onPressed: null,
              icon: Icons.home_filled,
              text: 'Home',
            ),
            GButton(
              onPressed: null,
              icon: Icons.favorite,
              text: 'Wishlist',
            ),
            GButton(
              onPressed: null,
              icon: Icons.support_agent,
              text: 'Contact Us',
            ),
            GButton(
              onPressed: null,
              icon: Icons.person,
              text: 'profile',
            ),
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: const Color.fromARGB(255, 252, 247, 247),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Romiee",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBar(
                    hintText: '   Search here...',
                    hintStyle:
                        const MaterialStatePropertyAll(TextStyle(fontSize: 15)),
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.white),
                    padding: const MaterialStatePropertyAll(
                        EdgeInsetsDirectional.all(8)),
                    trailing: <Widget>[
                      CircleAvatar(
                          radius: 24,
                          backgroundColor:
                              const Color.fromARGB(255, 209, 52, 91),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 30,
                              )))
                    ]),
              ),
              const Gap(20),
              const Text(
                'Popular Cities',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
              ),
              const Gap(20),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CityCard(),
                    CityCard(),
                    CityCard(),
                  ],
                ),
              ),
              const Gap(20),
              const Text(
                'Popular Rooms',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
              ),
              const Gap(15),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CityLabel(),
                    CityLabel(),
                    CityLabel(),
                  ],
                ),
              ),
              const Gap(10),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RoomCard(),
                    RoomCard(),
                    RoomCard(),
                  ],
                ),
              ),
              const Gap(10),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          width: 1.0, color: Color.fromARGB(255, 209, 52, 91))),
                  child: const Text(
                    'View All Properties',
                    style: TextStyle(color: Color.fromARGB(255, 209, 52, 91)),
                  ),
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      )),
    );
  }
}
