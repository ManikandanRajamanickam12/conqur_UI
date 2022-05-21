import 'package:conqur/pages/header.dart';
import 'package:conqur/pages/qrt_result.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class QRTTest extends StatefulWidget {
  const QRTTest({Key? key}) : super(key: key);

  @override
  State<QRTTest> createState() => _QRTTestState();
}

class _QRTTestState extends State<QRTTest> {
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
                height: MediaQuery.of(context).size.height * 0.8,
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
                                    ..onTap = () => print('Tap Here onTap'),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50, right: 50, top: 100, bottom: 50),
                      child: SvgPicture.asset('assets/lying.svg',
                          width: 180,
                          height: 80,
                          alignment: Alignment.center,
                          fit: BoxFit.scaleDown),
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
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: NeumorphicButton(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(18)),
                            intensity: 1,
                            depth: 3,
                            color: const Color(0xffECECEF)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => QRTResult())));
                        },
                        child: Container(
                          width: 120,
                          height: 22,
                          alignment: Alignment.center,
                          child: const Text(
                            "START TEST",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "VIEW ALL QRT REPORTS",
                        style: GoogleFonts.roboto(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey,
                        size: 18,
                      )
                    ],
                  )),
            )
          ],
        ),
      )),
    );
  }
}
