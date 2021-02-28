import 'package:cozy/model/city.dart';
import 'package:cozy/model/space.dart';
import 'package:cozy/model/tips.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widget/bottom_navbar_item.dart';
import 'package:cozy/widget/city_card.dart';
import 'package:cozy/widget/space_card.dart';
import 'package:cozy/widget/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              SizedBox(height: edge,),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: textTitleStyle.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Mencari kosan yang cozy',
                  style: textSubtitleStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Cities',
                  style: textTitleThinStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: edge,
                    ),
                    CityCard(City(
                        id: 1,
                        nameCity: 'Jakarta',
                        imageUrl: 'assets/images/city_1.png',
                        isPopular: false)),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                        id: 2,
                        nameCity: 'Bandung',
                        imageUrl: 'assets/images/city_2.png',
                        isPopular: true)),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                        id: 3,
                        nameCity: 'Surabaya',
                        imageUrl: 'assets/images/city_3.png',
                        isPopular: false)),
                    SizedBox(
                      width: edge,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // NOTE: Recommended Space
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Recommended Space',
                  style: textTitleThinStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    SpaceCard(Space(
                        id: 1,
                        nameSpace: 'Kuretakeso Hott',
                        price: 52,
                        city: 'Bandung',
                        country: 'Germany',
                        rating: 4,
                        imageUrlSpace: 'assets/images/space_1.png')),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                        id: 2,
                        nameSpace: 'Roemah Nenek',
                        price: 11,
                        city: 'Seattle',
                        country: 'Bogor',
                        rating: 5,
                        imageUrlSpace: 'assets/images/space_2.png')),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                        id: 3,
                        nameSpace: 'Darrling How',
                        price: 20,
                        city: 'Jakarta',
                        country: 'Indonesia',
                        rating: 3,
                        imageUrlSpace: 'assets/images/space_3.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips & Guidance',
                  style: textTitleStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    TipsCard(Tips(
                        id: 1,
                        title: 'City Guidelines',
                        imageUrl: 'assets/images/tips_1.png',
                        updatedAt: '20 Apr')),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(Tips(
                        id: 2,
                        title: 'Jakarta Fairship',
                        imageUrl: 'assets/images/tips_2.png',
                        updatedAt: '11 Dec')),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          )),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: greybgColor, borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbar(
              imageUrl: 'assets/images/Icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbar(
              imageUrl: 'assets/images/Icon_mail_solid.png',
              isActive: false,
            ),
            BottomNavbar(
              imageUrl: 'assets/images/Icon_card_solid.png',
              isActive: false,
            ),
            BottomNavbar(
              imageUrl: 'assets/images/Icon_love_solid.png',
              isActive: false,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
