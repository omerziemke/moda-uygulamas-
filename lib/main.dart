import 'package:flutter/material.dart';
import 'package:flutter_moda_uygulamasi_app/detay.dart';

void main() {
  runApp(ModaApp());
}

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: [
              Tab(
                text: "Home",
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
              Tab(
                text: "Home",
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
              Tab(
                text: "Home",
                icon: Icon(
                  Icons.navigation,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
              Tab(
                text: "Home",
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
            ]),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Moda Uygulamam",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          //Üsttaraftaki container
          Container(
            height: 150,
            width: double.infinity,
            // color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listeyeEkle("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeyeEkle("assets/model2.jpeg", "assets/chloelogo.png"),
                  SizedBox(
                    width: 20,
                  ),
                  listeyeEkle("assets/model3.jpeg", "assets/louisvuitton.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeyeEkle("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeyeEkle("assets/model2.jpeg", "assets/chloelogo.png"),
                  SizedBox(
                    width: 20,
                  ),
                  listeyeEkle("assets/model3.jpeg", "assets/louisvuitton.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeyeEkle("assets/model2.jpeg", "assets/chloelogo.png"),
                  SizedBox(
                    width: 20,
                  ),
                  listeyeEkle("assets/model3.jpeg", "assets/louisvuitton.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeyeEkle("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  SizedBox(
                    width: 20,
                  ),
                  listeyeEkle("assets/model2.jpeg", "assets/chloelogo.png"),
                  SizedBox(
                    width: 20,
                  ),
                  listeyeEkle("assets/model3.jpeg", "assets/louisvuitton.jpg"),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(16),
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 510,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage("assets/model1.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Rather than declaring a font as part of an app,"
                        " you can declare a font as part of a separate package. "
                        "This is a convenient way to share the same font ",
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay(
                                      imgPath: "assets/modelgrid1.jpeg")));
                            },
                            child: Hero(
                              tag: "assets/modelgrid1.jpeg",
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid1.jpeg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                          imgPath: "assets/modelgrid2.jpeg",
                                        )));
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  height: 95,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid2.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                          imgPath: "assets/modelgrid3.jpeg",
                                        )));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  height: 95,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid3.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: Container(
                            height: 25,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.brown.withOpacity(0.2)),
                            child: Center(
                                child: Text(
                              "#Louis vuitton",
                              style: TextStyle(fontSize: 10),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.brown.withOpacity(0.2)),
                            child: Center(
                                child: Text(
                              "#Chloe",
                              style: TextStyle(fontSize: 10),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Icon(Icons.reply),
                        ),
                        Text(
                          "1.7K",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.comment,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "325",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "2.3k",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  listeyeEkle(String imagepath, String logopath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagepath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(logopath)),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 25,
          width: 75,
          decoration: BoxDecoration(
              color: Colors.brown, borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            "Follow",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          )),
        ),
      ],
    );
  }
}
