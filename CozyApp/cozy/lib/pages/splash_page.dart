// ignore_for_file: deprecated_member_use, implementation_imports, unnecessary_import, prefer_const_constructors, sized_box_for_whitespace

import 'package:cozy/pages/home_page.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset("assets/images/splash_image.png")),
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  left: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Find Cozy House\n to Stays And Happy",
                      style: blackTextStyle.copyWith(fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Stop membuang banyak waktu \n pada tempat yang tidak habitables",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 210,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        color: blackColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          'explore now here ',
                          style: whiteTextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
