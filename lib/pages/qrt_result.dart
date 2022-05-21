import 'package:conqur/pages/header.dart';
import 'package:conqur/pages/training.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class QRTResult extends StatefulWidget {
  const QRTResult({Key? key}) : super(key: key);

  @override
  State<QRTResult> createState() => _QRTResultState();
}

class _QRTResultState extends State<QRTResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Header(title: "TRANING READINESS"),
            const SizedBox(
              height: 30,
            ),
            Neumorphic(
              style: const NeumorphicStyle(),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.93,
                height: MediaQuery.of(context).size.height * 0.865,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8.0, top: 25),
                      child: Container(
                          width: 380,
                          height: 90,
                          padding:
                              EdgeInsets.only(top: 20, left: 20, right: 20),
                          child: RichText(
                            text: TextSpan(
                              text:
                                  "Take a Quick Recovery Test (QRT) to get a glimpse of how well your body recovered.     ",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black,
                                height: 1.3,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Learn More",
                                  style: const TextStyle(
                                      height: 1.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  Training())));
                                    },
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: SvgPicture.asset('assets/clock.svg',
                          width: 180,
                          alignment: Alignment.center,
                          fit: BoxFit.scaleDown),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(8)),
                            depth: -2),
                        child: Container(
                          width: 265,
                          height: 60,
                          alignment: Alignment.center,
                          child: const Text(
                            "05m : 10s",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 35, right: 15, top: 25, bottom: 25),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.grey,
                            size: 20,
                          ),
                          Container(
                            width: 270,
                            height: 85,
                            padding: EdgeInsets.only(top: 33, left: 5),
                            child: Text(
                              "Please lie down comfortably and try to keep yourself relaxed throughout the test",
                              style: GoogleFonts.roboto(
                                  color: Colors.black.withOpacity(0.5),
                                  height: 1.2),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            )
          ],
        ),
      )),
    );
  }
}
