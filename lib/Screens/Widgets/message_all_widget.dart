import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class message_all_widget extends StatelessWidget {
  final String Maintext;
  final String subtext;
  final String image;
  final String time;
  final String message_count;

  message_all_widget(
      {required this.Maintext,
      required this.subtext,
      required this.image,
      required this.message_count,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.95,
          color: Color.fromARGB(255, 175, 193, 179),
          child: Row(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.1500,
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(image),
                      filterQuality: FilterQuality.high)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.6,
              color: Color.fromARGB(255, 175, 193, 179),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    //Main text here "lib/icons/male-doctor.png"
                    Text(
                      Maintext,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    //Subtext here e.g  "I don,t have any fever, but headchace..."
                    Text(
                      subtext,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.095,
              width: MediaQuery.of(context).size.width * 0.1700,
              child: Column(children: [
                const SizedBox(
                  height: 10,
                ),
                //Time of chat text here e.g 10:24
                Text(time),
                const SizedBox(
                  height: 02,
                ),
                Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 2, 134, 117),
                    shape: BoxShape.circle,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Message Count Here
                        Text(
                          message_count,
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        )
                      ]),
                )
              ]),
            )
          ]),
        ),
      ]),
    );
  }
}
