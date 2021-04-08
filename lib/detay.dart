import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;

  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                elevation: 15,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 110,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("assets/dress.jpg"),
                                    fit: BoxFit.contain),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                // color: Colors.green,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 200,
                                child: Text(
                                  "LAMİNATED",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 200,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Luis vuitton",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 200,
                                child: Text(
                                  "Rather than declaring a font as part of an app,"
                                  " you can declare a font as part of a separate package. ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width - 100,
                        color: Colors.black54,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "\$6500",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black54),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 210,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.brown.withOpacity(0.8),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
