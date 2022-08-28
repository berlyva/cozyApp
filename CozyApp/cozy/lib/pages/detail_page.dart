import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/pic.png",
              height: 350,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/images/btn_back.png",
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    "assets/images/btn_wishlist.png",
                    width: 40,
                  )
                ],
              ),
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // NOTE title
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Apartmen Nih",
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$52',
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: '/ month',
                                          style: greyTextStyle.copyWith(
                                            fontSize: 16,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/icon_star.png",
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/icon_star.png",
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/icon_star.png",
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/icon_star.png",
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/icon_star.png",
                                  width: 20,
                                  color: const Color(0xff989BA1),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //NOTE FACILITIES
                      Padding(
                        padding: EdgeInsets.only(
                          left: edge,
                        ),
                        child: Text(
                          ' Main Facilities',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
