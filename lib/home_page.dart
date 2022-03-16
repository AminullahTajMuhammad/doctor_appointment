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
        buildSearch(),
        buildCategories(),
        buildDoctorsList()
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: GoogleFonts.mulish().fontFamily,
                  fontWeight: FontWeight.bold
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: GoogleFonts.mulish().fontFamily,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 120,
          margin: const EdgeInsets.only(left: 20, right: 10, top: 10),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              categoryTile("Surgeon", "assets/ic_surgeon.png", true),
              categoryTile("Urologist", "assets/ic_kidney.png", false),
              categoryTile("Dentist", "assets/ic_dentist.png", false),
              categoryTile("Allergist", "assets/ic_allergy.png", false),
            ],
          ),
        )
      ],
    );
  }

  Widget categoryTile(String title, String img, bool isSelected) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? Constants.PRIMARY_COLOR : const Color(0xffE3E3E3),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            img,
            height: 50,
            width: 50,
            color: isSelected ? Constants.PRIMARY_COLOR : Colors.black,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.5,
                fontFamily: GoogleFonts.mulish().fontFamily,
                color: isSelected ? Constants.PRIMARY_COLOR : Colors.black
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildDoctorsList() {
    return Container(
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          doctorListTile("assets/dr_1.png", "Dr. Smith", "Surgeon", "4.7", "10.00 AM - 03.00 AM", true),
          doctorListTile("assets/dr_2.png", "Dr. Steve Son", "Urologist", "4.5", "10.00 AM - 03.00 AM", false),
          doctorListTile("assets/dr_3.png", "Dr. Banner", "Dentists", "5.0", "10.00 AM - 03.00 AM", false),
          doctorListTile("assets/dr_4.png", "Dr. Clart Jon", "Surgeon", "4.1", "10.00 AM - 03.00 AM", false),
        ],
      ),
    );
  }

  Widget doctorListTile(String img, String name, String specialist, String rating, String time, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 15, right: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffE3E3E3),
        ),
        color: isSelected ? Constants.PRIMARY_COLOR : const Color(0xffFFFFFF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(left: 5),
            child: CircleAvatar(
              backgroundImage: AssetImage(img),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 16.5,
                        fontFamily: GoogleFonts.mulish().fontFamily,
                        fontWeight: FontWeight.w600,
                        color: isSelected ? Colors.white : Colors.black
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  child: Text(
                    specialist,
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: GoogleFonts.mulish().fontFamily,
                        color: isSelected ? Colors.white : Colors.black
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/ic_rating.svg", height: 16,),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Text(
                          rating,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: GoogleFonts.mulish().fontFamily,
                            color: isSelected ? Colors.white : Colors.black
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/ic_time.svg", height: 16,
                              color: isSelected ? Colors.white : const Color(0xff436E8E),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: Text(
                                time,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: GoogleFonts.mulish().fontFamily,
                                  color: isSelected ? Colors.white : Colors.black
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
