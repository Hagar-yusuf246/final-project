import 'package:finalproject/models/Mutagenicity.dart';
import 'package:finalproject/pages/robot.dart';
import 'package:finalproject/screens/bottomnavbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/result_contanier.dart';

class mutresult extends StatefulWidget {
  const mutresult({Key? key}) : super(key: key);

  @override
  State<mutresult> createState() => _mutresultState();
}

class _mutresultState extends State<mutresult> {
  bool result = false;
  bool textcolor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/homepages_icon.svg",
                    height: 35,
                  ),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => robot()),
              );
            },
            child: Container(
              child: Image.asset(
                "assets/Animation3.gif",
                height: 60,
                width: 65,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 200,
            color: Color(0xff1D5D9B),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mutagenicity()),
                );
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Container(
              alignment: Alignment.topCenter,
              child: const Text(
                "Mutagenicity",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Positioned(
              top: 100,
              child: Container(
                height: 800,
                width: 411,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 100),
                          child: resultwidgetcontainer(
                            isDark: true,
                            result: result,
                            text: "Mutagenic",
                            textcolor: textcolor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 100),
                          child: resultwidgetcontainer(
                            isDark: true,
                            result: !result,
                            text: "Non-Mutagenic",
                            textcolor: !textcolor,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Container(
                        alignment: Alignment.topRight,
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Color(0xffCACACA), width: 1),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xffCACACA),
                                  offset: Offset(8, 8),
                                  blurRadius: 4,
                                  spreadRadius: 0)
                            ]),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      backgroundColor: Color(0xffFFFFFF),
                                      content: Container(
                                        alignment: Alignment.topLeft,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 431,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        // wrap content in flutter

                                        child: Column(children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 265),
                                            child: MaterialButton(
                                              height: 24,
                                              minWidth: 24,
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                color: Color(0xff1D5D9B),
                                                height: 24,
                                                width: 24,
                                                child: Icon(
                                                  Icons.clear_sharp,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 30),
                                            child: Container(
                                              height: 61,
                                              width: 61,
                                              child: Image.asset(
                                                "assets/image12.png",
                                                height: 61,
                                                width: 61,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 24,
                                                width: 27,
                                                child: Image.asset(
                                                  "assets/image11.png",
                                                  height: 24,
                                                  width: 27,
                                                ),
                                              ),
                                              const Text(
                                                "Atomic Number :  ",
                                                style: TextStyle(
                                                  color: Color(0xff1D5D9B),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 50),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 24,
                                                width: 27,
                                                child: Image.asset(
                                                  "assets/image11.png",
                                                  height: 24,
                                                  width: 27,
                                                ),
                                              ),
                                              const Text(
                                                "Number of Atoms :  ",
                                                style: TextStyle(
                                                    color: Color(0xff1D5D9B)),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 50),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 24,
                                                width: 27,
                                                child: Image.asset(
                                                  "assets/image11.png",
                                                  height: 24,
                                                  width: 27,
                                                ),
                                              ),
                                              const Text(
                                                "Bonds Types :  :  ",
                                                style: TextStyle(
                                                    color: Color(0xff1D5D9B)),
                                              ),
                                            ],
                                          )
                                        ]),
                                      ),
                                      insetPadding: const EdgeInsets.all(10),
                                    );
                                  },
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, right: 8),
                                child: Container(
                                  height: 34,
                                  width: 48,
                                  child: Image.asset(
                                    "assets/info.png",
                                    height: 34,
                                    width: 48,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}