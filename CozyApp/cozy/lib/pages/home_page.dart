// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/models/tips.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/buttom_navbar.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE : Header
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                "Explore Now",
                style: blackTextStyle.copyWith(
                  fontSize: edge,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    city: City(
                      id: 1,
                      imageUrl: "assets/images/city1.png",
                      name: "Jakarta",
                      isPopular: false,
                    ),
                    // City(
                    //     id: 1,
                    //     name: "Jakarta",
                    //     imageUrl: "assets/images/city1.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 2,
                      imageUrl: "assets/images/city2.png",
                      name: "Bandung",
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 3,
                      imageUrl: "assets/images/city3.png",
                      name: "Surabaya",
                      isPopular: false,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Recommended Space
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpaceCard(
                    space: Space(
                      id: 1,
                      name: 'Villa Kancil',
                      imageUrl: 'assets/images/space1.png',
                      prices: 52,
                      city: 'bandung',
                      country: "Indonesia",
                      rating: 4,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: Space(
                      id: 1,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/images/space2.png',
                      prices: 11,
                      city: 'Bogor',
                      country: "Indonesia",
                      rating: 5,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    space: Space(
                      id: 1,
                      name: 'Scbd',
                      imageUrl: 'assets/images/space3.png',
                      prices: 20,
                      city: 'Jakarta',
                      country: "Indonesia",
                      rating: 3,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //Note :TIPS& Guidance
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    tips: Tips(
                      id: 1,
                      title: "City GuideLiness",
                      imageUrl: 'assets/images/tips1.png',
                      updateAt: "20 Apr",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    tips: Tips(
                      id: 2,
                      title: "Jakarta FairShip",
                      imageUrl: 'assets/images/tips2.png',
                      updateAt: "11 Apr",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        // lebar => sepanjang lebar layar - 2x margin
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
            color: Color(0xffF6f7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonNavbar(
              imageUrl: "assets/images/Icon_home_solid.png",
              isActive: true,
            ),
            ButtonNavbar(
              imageUrl: "assets/images/Icon_mail_solid.png",
              isActive: false,
            ),
            ButtonNavbar(
              imageUrl: "assets/images/Icon_card_solid.png",
              isActive: false,
            ),
            ButtonNavbar(
              imageUrl: "assets/images/Icon_love_solid.png",
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
