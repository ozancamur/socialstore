import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Center(
        child: Text(
          "Sepetim",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.red[400]),
        ),
      ),
      ListTile( // ilk fayansımız
        title: Text(
          "Çikolatalı Gofret",
          style: TextStyle(fontSize: 15.0, color: Colors.black),
        ), //Fayansın Sol Üst Başı
        subtitle: Text(
          "2 adet x 3.50 TL",
          style: TextStyle(fontSize: 15.0, color: Colors.grey),
        ), // Sol Üst Başın Altı
        trailing: Text(
          "7 TL",
          style: TextStyle(fontSize: 15.0, color: Colors.black),
        ), // Fayansın Sonu
      ),

      ListTile( // ilk fayansımız
        title: Text(
          "Meyve Suyu",
          style: TextStyle(fontSize: 15.0, color: Colors.black),
        ), //Fayansın Sol Üst Başı
        subtitle: Text(
          "1 adet x 2 TL",
          style: TextStyle(fontSize: 15.0, color: Colors.grey),
        ), // Sol Üst Başın Altı
        trailing: Text(
          "2 TL",
          style: TextStyle(fontSize: 15.0, color: Colors.black),
        ), // Fayansın Sonu
      ),

      ListTile( // ilk fayansımız
        title: Text(
          "Islak Kek",
          style: TextStyle(fontSize: 15.0, color: Colors.black),
        ), //Fayansın Sol Üst Başı
        subtitle: Text(
          "2 adet x 5.50 TL",
          style: TextStyle(fontSize: 15.0, color: Colors.grey),
        ), // Sol Üst Başın Altı
        trailing: Text(
          "11 TL",
          style: TextStyle(fontSize: 15.0, color: Colors.black),
        ), // Fayansın Sonu
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Column(children: <Widget>[
              Text(
                "Toplam Tutar",
                 style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400]),
                ),
                SizedBox(height: 5.0),
                Text(
                  "20 TL",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    )
                )],
            ),
          ),
        ],
      ),

      SizedBox(height: 20.0),

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 45.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.red[400]
          ),
          child: Center(
            child: Text(
              "Alışverişi Tamamla",
               style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
          ),
          ),
      ),
      ]
    );
  }
}
