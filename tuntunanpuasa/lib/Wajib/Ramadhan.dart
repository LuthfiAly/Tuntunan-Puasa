import 'package:flutter/material.dart';

class Ramadhan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puasa Ramadhan",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ramadhan1(),
    );
  }
}

class ramadhan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puasa Ramadhan"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "https://aitarus.com/wp-content/uploads/2019/04/Puasa-Ramadhan.png",
            " Pengertian Puasa Ramadhan \n\n Puasa Ramadhan merupakan pelaksanaan dari Rukun Iman yang keempat yang telah diperintahkan oleh Allah SWT kepada seluruh hamba-Nya yang beriman. Allah telah berfirman dalam Q.S. Al-Baqarah ayat 183, yang artinya: “Hai orang-orang yang beriman, diwajibkan atas kamu sekalian berpuasa sebagaimana diwajibkan atas orang-orang sebelum kamu agar kamu bertakwa.” Jadi, dari Firman Allah SWT di atas bisa disimpulkan bahwa melaksanakan puasa Ramadhan adalah wajib hukumnya, dimana hal tersebut adalah bentuk pertanggungjawaban manusia kepada penciptanya secara langsung serta kegiatan yang menyangkut aspek hablum minallah.",
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
