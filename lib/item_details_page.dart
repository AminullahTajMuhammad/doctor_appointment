import 'package:doctor_appointment/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetailsPage extends StatefulWidget {
  @override
  _ItemDetailsPageState createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.PRIMARY_COLOR,
      body: SingleChildScrollView(
        child: initWidget(),
      ),
    );
  }

  Widget initWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAppBar(),
        buildDoctorImage(),
        buildDoctorDescription()
      ],
    );
  }

  Widget buildAppBar() {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () { Navigator.pop(context); },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.transparent,
                  border: Border.all(
                      color: Colors.white,
                      width: 0.3
                  )
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.transparent,
                border: Border.all(
                    color: Colors.white,
                    width: 0.3
                )
            ),
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget buildDoctorImage() {
    return Center(
      child: Image.asset(
        "assets/dr_details.png",
        height: 300,
      ),
    );
  }

  Widget buildDoctorDescription() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Your Hands",
                  style: TextStyle(
                      fontFamily: GoogleFonts.mulish().fontFamily,
                      fontSize: 28,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15, top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        "assets/ic_call.svg"
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: SvgPicture.asset(
                        "assets/ic_video_call.svg",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: SvgPicture.asset(
                        "assets/ic_message.svg",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              "Surgeon, MBBS",
              style: TextStyle(
                  fontSize: 16.5,
                  fontFamily: GoogleFonts.mulish().fontFamily,
                  color: Colors.black
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 15),
            child: Row(
              children: [
                Container(
                  child: SvgPicture.asset("assets/ic_loc.svg"),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    "New York, USA",
                    style: TextStyle(
                        fontSize: 16.5,
                        fontFamily: GoogleFonts.mulish().fontFamily,
                        color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              "Description",
              style: TextStyle(
                fontSize: 18,
                fontFamily: GoogleFonts.mulish().fontFamily,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 8, right: 20),
            child: Text(
              "Dr. Smith is one of the best doctor in New York and has 10 years of experience.He has done more than 100 surgeries",
              style: TextStyle(
                fontSize: 16,
                fontFamily: GoogleFonts.mulish().fontFamily,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Reviews",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: GoogleFonts.mulish().fontFamily,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/ic_rating.svg", height: 16,),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "4.9",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: GoogleFonts.mulish().fontFamily,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Patients",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: GoogleFonts.mulish().fontFamily,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/ic_patients.svg", height: 16,),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "22k",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: GoogleFonts.mulish().fontFamily,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.grey,
                          width: 0.5
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35, left: 20, right: 20),
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Constants.PRIMARY_COLOR,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Book an Appointment",
              style: TextStyle(
                fontSize: 16,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
