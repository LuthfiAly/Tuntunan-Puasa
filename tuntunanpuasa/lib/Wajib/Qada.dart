import 'package:flutter/material.dart';

class Qada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puasa Qada",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: qada1(),
    );
  }
}

class qada1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puasa Qada"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "https://ciudad1.com/wp-content/uploads/2019/02/Niat-Qadha-Puasa-Ramadhan.png",
            " Mereka yang meninggalkan puasa di bulan Ramadhan harus mengganti puasa wajib tersebut di luar bulan Ramadhan. Mereka yang mengqadha puasa Ramadhan juga wajib memasang niat puasa qadhanya di malam hari, setidaknya menurut Mazhab Syafi’i. \n\n Demikian diterangkan oleh Syekh Sulaiman Al-Bujairimi dalam Hasyiyatul Iqna’-nya sebagai berikut. \n\n ويشترط لفرض الصوم من رمضان أو غيره كقضاء أو نذر التبييت وهو إيقاع النية ليلا لقوله صلى الله عليه وسلم: من لم يبيت النية قبل الفجر فلا صيام له. ولا بد من التبييت لكل يوم لظاهر الخبر. \n\n Artinya, “Disyaratkan memasang niat di malam hari bagi puasa wajib seperti puasa Ramadhan, puasa qadha, atau puasa nadzar. Syarat ini berdasar pada hadits Rasulullah SAW, ‘Siapa yang tidak memalamkan niat sebelum fajar, maka tiada puasa baginya.’ Karenanya, tidak ada jalan lain kecuali berniat puasa setiap hari berdasar pada redaksi zahir hadits,” (Lihat Syekh Sulaiman Al-Bujairimi, Hasyiyatul Iqna’, [Darul Fikr, Beirut: 2007 M/1428 H], juz II). \n\n Adapun berikut ini adalah lafal niat qadha puasa Ramadhan: \n\n نَوَيْتُ صَوْمَ غَدٍ عَنْ قَضَاءِ فَرْضِ شَهْرِ رَمَضَانَ لِلهِ تَعَالَى \n\n Artinya, “Aku berniat untuk mengqadha puasa Bulan Ramadhan esok hari karena Allah SWT.”",
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
