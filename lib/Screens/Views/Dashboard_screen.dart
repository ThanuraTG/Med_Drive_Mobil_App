import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Widgets/article.dart';
import 'package:medical/Screens/Widgets/banner.dart';
import 'package:medical/Screens/Widgets/list_doctor1.dart';
import 'package:medical/Screens/Widgets/listicons.dart';
import 'package:medical/Screens/Views/articlePage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 234, 237, 233),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 00),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset(
                "lib/icons/bell.png",
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ],
        title: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Find your desire\nhealth solution",
              style: GoogleFonts.inter(
                  color: Color.fromARGB(255, 51, 47, 47),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
            ),
          ],
        ),
        toolbarHeight: 100,
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 179, 205, 147),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(),
              child: TextField(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: articlePage()));
                },
                textAlign: TextAlign.start,
                textInputAction: TextInputAction.none,
                autofocus: false,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  focusColor: Colors.black26,
                  fillColor: Color.fromARGB(255, 205, 220, 207),
                  filled: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Container(
                      height: 10,
                      width: 10,
                      child: Image.asset(
                        "lib/icons/search.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
                  label: Text("Search pharmacy, doctor ..."),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Body Start fro here
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              listIcons(Icon: "lib/icons/Doctor.png", text: "Doctor"),
              listIcons(Icon: "lib/icons/Pharmacy.png", text: "Pharmacy"),
              listIcons(Icon: "lib/icons/Hospital.png", text: "Hospital"),
              listIcons(Icon: "lib/icons/Ambulance.png", text: "Ambulance"),
            ],
          ),
          //List icons (Can Edit in Widgets )
          SizedBox(
            height: 10,
          ),
          const banner(),
          // Banner Design
          const SizedBox(
            height: 10,
          ),
          // top doctor catagary
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Doctor",
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 46, 46, 46),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 180,
              width: 500,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  list_doctor1(
                      distance: "130m Away",
                      image: "lib/icons/male-doctor.png",
                      maintext: "Dr. Marcus Horizon",
                      numRating: "4.7",
                      subtext: "Chardiologist"),
                  list_doctor1(
                      distance: "130m Away",
                      image: "lib/icons/docto3.png",
                      maintext: "Dr. Maria Elena",
                      numRating: "4.6",
                      subtext: "Psychologist"),
                  list_doctor1(
                      distance: "2km away",
                      image: "lib/icons/doctor2.png",
                      maintext: "Dr. Stevi Jessi",
                      numRating: "4.8",
                      subtext: "Orthopedist"),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
