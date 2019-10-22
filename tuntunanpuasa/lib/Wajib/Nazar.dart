import 'package:flutter/material.dart';

class Nazar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puasa Nazar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: nazar1(),
    );
  }
}

class nazar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puasa Nazar"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
            "https://i0.wp.com/kuliahislam.com/wp-content/uploads/2019/01/nazar2.jpg?fit=284%2C177&ssl=1",
            " Anda sudah mengetahui dan pernah melakukan puasa nazar? Sebenarnya apa itu nazar? Apa saja jenisnya dan bagaimana bacaan niat puasa nazar? \n\n Sebelum membahas masalah niat puasa nazar, kita mesti tahu dulu batasan nazar itu seperti apa. Secara terminologi, nazar berarti janji melakukan sesuatu yang dikaitkan dengan keberhasilan atau maksud cita-cita. Misalnya Jikalau saya dapat hadiah kendaraan beroda empat dari undian bungkus kopi, saya akan puasa sebulan penuh Itulah yang dinamakan nazar, dengan syarat diucapkan dengan lisan. Apabila tidak diucapkan atau hanya berjanji dalam hati, maka bukan nazar namanya. \n\n Pada dasarnya, puasa nazar tidak terbatas pada puasa saja. Tapi bisa masuk dalam segala hal dalam kehidupan manusia. Gagasan sederhana tentang puasa Nazar adalah janji atau sumpah yang disumpah oleh seseorang atas suatu kondisi yang diisyaratkan. \n\n Nah, jikalau ternyata sumpah tersebut kesampaian, maka puasa tersebut wajib dilakukan dan puasanya dinamakan puasa nazar. Namun demikian, jikalau tidak dilakukan, maka berdosalah hukumnya, sama saja dengan meninggalkan kewajiban menyerupai puasa Ramadhan atau sholat wajib. \n\n Tidak ada larangan bagi setiap orang untuk bernazar apapun, baik puasa maupun yang lain. Bahkan boleh juga bernazar dengan jumlah puasa yang banyak atau sedikit, selama Nazar tersebut bukan dalam hal maksiat. Apalagi, melakukan puasa nazar hanya saat kondisi dirinya terjepit oleh keadaan yang sulit, sehingga ia terpaksa bernazar. \n\n Dia hanya mau beramal jika kondisi tertentu terpenuhi. Seakan-akan ibadah adalah sebuah tawar-menawar dan jual beli atau transaksi barter antara dirinya dengan Allah SWT. Ada sebuah kondisi bersyarat terlebih dahulu, baru ia mau berpuasa, mau shodaqoh, dan mau beramal baik lainnya. \n\n Sesungguhnya yang perlu diperlihatkan adalah bahwa Nazar itu tidak akan bisa mengubah takdir yang telah ditentukan oleh Allah SWT. Jika seseorang pada akhirnya terpenuhi kondisi yang ia inginkan bukan karena Nazar yang iya penuhi, akan tetapi Allah SWT hendak memberi. Nikmat atau ujian kepada hambanya. Hal ini bertujuan untuk menguji sejauh mana hamba tersebut bisa memberlakukan anugrah tersebut, dan ini tantangan yang sangat berat bagi manusia.",
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
