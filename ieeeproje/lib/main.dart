import 'package:flutter/material.dart';
import 'package:ieeeproje/sepetim.dart';
import 'package:ieeeproje/urunler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Projem',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnaSayfa());
  }
}

class AnaSayfa extends StatefulWidget {
  //final metin = "Sessiz Gemi";

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<Widget> _icerikler;
  int _aktifIcerikNo = 0;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    _icerikler = [
      //Text(widget.metin),
      Urunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[400]), //appbar içinde gösterilen ikonların özellikerini belirleyebiliyoruz
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Uçarak Gelsin",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
      ),
      body: _icerikler[_aktifIcerikNo],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ozan Çamur"),
            accountEmail: Text("ozancamur@posta.mu.edu.tr"),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2017/02/26/00/03/cranium-2099120_960_720.png"),
                  fit: BoxFit.cover
                  ),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red[400],
            ),
          ),
          ListTile(title: Text("Siparişlerim"), onTap: () {},),
          ListTile(title: Text("İndirimlerim"), onTap: () {},),
          ListTile(title: Text("Ayarlar"), onTap: () {},),
          ListTile(title: Text("Çıkış Yap"), onTap: () {
            Navigator.pop(context);
          },),
          
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:
            _aktifIcerikNo, // _aktifIcerikNo, en son tıklanan butonun pozisyonun numarasını tuttuğu için, currentIndex'e atayarak; en son tıklanan butonu aktif olarak gösterir.
        selectedItemColor: Colors.red[400], //aktif butonun rengi
        unselectedItemColor: Colors.grey[600], //anaktif butonun rengi
        items: [
          // ignore: deprecated_member_use
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Ürünler")),
          // ignore: deprecated_member_use
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("Sepetim")),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
