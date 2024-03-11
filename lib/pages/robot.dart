import 'package:flutter/material.dart';

class robot extends StatefulWidget {
  const robot({Key? key}) : super(key: key);

  @override
  State<robot> createState() => _robotState();
}

class _robotState extends State<robot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 15,
              alignment: Alignment.topLeft,
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Your AI Assistant",
                style: TextStyle(
                    color: Color(0xff1D5D9B),
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16),
            child: Column(
              children: [
                Text(
                  "By using Mr .Tox chatbot ,you can ask your",
                  style: TextStyle(
                      color: Color(0xffa3a5a6),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  " questions and receive articles using",
                  style: TextStyle(
                      color: Color(0xffa3a5a6),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "artificial intelligence assistant",
                  style: TextStyle(
                      color: Color(0xffa3a5a6),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/Animation6.gif",
                height: 400,
                width: 500,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 32),
            height: 60,
            width: 350,
            child: MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    )
                  ],
                ),
                color: const Color(0xffF4D160),
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}