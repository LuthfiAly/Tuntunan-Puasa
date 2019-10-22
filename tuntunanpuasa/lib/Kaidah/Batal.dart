import 'package:flutter/material.dart';

class Batal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rukun Puasa",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: batal1(),
    );
  }
}

class batal1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hal Yg Dapat Membatalkan Puasa"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "https://officialmwmaulidan.files.wordpress.com/2017/03/perkarabatalpuasa.jpg",
            "1. Makan dan minum dengan sengaja. \n\nPuasa itu sendiri adalah ibadah yang mewajibkan kita untuk tidak makan dan minum selama selang waktu tertentu hingga waktu berbuka tiba (baca makanan yang cocok saat buka puasa). Jika seseorang makan atau minum saat berpuasa dengan sengaja batallah ibadah puasanya namun jika seseorang itu makan atau minum dalam keadaan lupa atau tidak sadar maka tidak batal puasanya dan ia juga tidak wajib mengganti atau mengqadha puasanya dikemudian hari. Sebagaimana hadits Rasullullah berikut ini:\n فَإِنَّمَا أَطْعَمَهُ اللهُ وَسَقَاهُ ,فَلْيُتِمَّ صَوْمَهُ ,مَنْ نَسِيَ وَهُوَ صَائِمٌ فَأَآَلَ أَوْ شَرِبَ\n\n 2. Muntah dengan sengaja. \n\nSeseorang yang dengan sengaja memuntahkan sesuatu dari perutnya maka puasanya tersebut batal atau tidak sah hukumnya sedangkan jika ia tidak sengaja memuntahkan sesuatu maka ia tidak memiliki kewajiban untuk mengganti atau mengqadha puasa ataupun kafarat di hari lain setelah bulan ramadhan. Hal ini berdasarkan hadits Rasulullah SAW: \nمَنْ ذَرَعَهُ القَيءُ فَلَيْسَ عَلَيْهِ قَضَاءٌ وَمَنِِ اسْتَقَاءَ عَمْدًا فَلْيَقْضِِ\n\n 3. Haid dan Nifas \n\n Perkara ini hanya membatalkan puasa pada wanita karena hanya wanita saja yang mengalami haid dan nifas. Darah haid atau nifas adalah darah kotor sehingga walaupun seorang wanita mengeluarkan darah tersebut pada detik detik terakhir waktu puasa atau menjelang waktu berbuka maka batallah puasanya. Hal ini berdasarkan ijma atau kesepakatan dari para ulama. Seorang wanita yang haid atau nifas tidak diperbolehkan untuk berpuasa selama masa haid atau nifasnya dan ia wajib mengganti atau mengqadha puasa tersebut dikemudian hari setelah bulan ramadhan berakhir. \n\n 4. Bersetubuh \n\nBaik suami istri atau pasangan yang belum menikah atau zina (baca zina dalam islam) jika mereka melakukan persetubuhan disiang hari pada saat berpuasa maka hukumnya haram dan mereka wajib membayar kifarat yakni berpuasa selama dua bulan berturut-turut, memerdekakan budak, atau memberi makan 60 orang miskin sebagaimana hadits rasulullah SAW berikut iniDari Abu Hurairah RA, dia berkata, “Di saat kami sedang duduk bersama Nabi SAW, datanglah seorang laki-laki seraya berkata, ‘Wahai Rasulullah SAW binasalah aku.’ Beliau bertanya, ‘Apa yang telah membinasakan dirimu?’ Dia menjawab, ‘Aku telah berhubungan badan dengan isteriku sedangkan aku dalam keadaan berpuasa Ramadhan.’ Beliau bertanya, ‘Apakah kamu mampu memerdekakan seorang budak?’ ‘Tidak,’ jawabnya. Lalu beliau bertanya lagi: ‘Apakah engkau mampu berpuasa selama dua bulan berturut-turut?’ Dia menjawab, ‘Tidak.’",
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
