import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: initWidget(),
        ),
      ),
    );
  }

  Widget initWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAppBar(),
        buildGreetings(),
        buildSearch()
      ],
    );
  }

  Widget buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.only(left: 20),
          child: const CircleAvatar(
            backgroundImage: AssetImage("assets/dr_1.png",)
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.grey[50],
            border: Border.all(
              color: Colors.grey,
              width: 0.3
            )
          ),
          margin: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset("assets/ic_notification.svg"),
        )
      ],
    );
  }

  Widget buildGreetings() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Find Doctor With",
            style: TextStyle(
              fontFamily: GoogleFonts.mulish().fontFamily,
              fontSize: 22
            ),
          ),
          Text(
            "Your Hands",
            style: TextStyle(
              fontFamily: GoogleFonts.mulish().fontFamily,
              fontSize: 32,
              fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSearch() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 55,
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Color(0xffE8E8E8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.search,
                      size: 25,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      margin: const EdgeInsets.only(left: 5, right: 10),
                      child: Text(
                        'Search for items here',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Constants.PRIMARY_COLOR,
              ),
              child: SvgPicture.asset(
                "assets/ic_filter.svg",
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildCategories() {
    return Container();
  }

  Widget buildDoctorsList() {
    return Container();
  }
}
