import 'package:flutter/material.dart';

class SeninKamis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puasa Senin Kamis",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: seninkamis1(),
    );
  }
}

class seninkamis1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puasa Senin Kamis"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "http://darunnajah.com/wp-content/uploads/2017/10/puasa-senin-kamis.jpg",
            " Apa Hukum Puasa Senin Kamis? \n\n Rasulullah shallallahu ‘alaihi wa sallam bersabda: \n\nتُعْرَضُ الأَعْمَالُ يَوْمَ الاِثْنَيْنِ وَالْخَمِيسِ فَأُحِبُّ أَنْ يُعْرَضَ عَمَلِى وَأَنَا صَائِمٌ \n\nPuasa hari Senin lebih ditekankan daripada puasa hari Kamis, sebagaimana dalam hadits (Abu Qotadah Al Anshori radhiyallahu ‘anhu) Nabi shallallahu ‘alaihi wa sallam pernah ditanya mengenai puasa pada hari Senin, lantas beliau menjawab: \n\nذَاكَ يَوْمٌ وُلِدْتُ فِيهِ وَيَوْمٌ بُعِثْتُ أَوْ أُنْزِلَ عَلَىَّ فِيهِ",
          ),
        ],
      ),
    );
  }

  Widget _createPageItemUI(String urlGambar, String pengertian) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(urlGambar),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              pengertian,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
