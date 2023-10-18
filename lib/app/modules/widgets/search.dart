import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // Border radius 10
                color: Colors.grey.shade200, // Warna latar belakang abu-abu
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search', // Teks placeholder
                  prefixIcon:
                      Icon(Icons.search_rounded), // Icon di sebelah kiri
                  border: InputBorder.none, // Hilangkan border bawaan TextField
                ),
              ),
            ),
            SizedBox(height: 10), // Jarak antara kotak pencarian dan profil
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("story6.jpeg"),
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Mengatur teks ke kiri
                  children: [
                    Text(
                      "hyunsoo_roh",
                      style: TextStyle(fontSize: 14),
                    ), // Mengatur ukuran font
                    SizedBox(height: 5), // Jarak antara dua teks
                    Text(
                      "actress MAA",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ), // Mengatur ukuran font dan warna
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                     image: DecorationImage(
                      image: AssetImage("story5.jpeg"),
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Mengatur teks ke kiri
                  children: [
                    Text(
                      "eunsoo_shin",
                      style: TextStyle(fontSize: 14),
                    ), // Mengatur ukuran font
                    SizedBox(height: 5), // Jarak antara dua teks
                    Text(
                      "aesthetic gurl",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ), // Mengatur ukuran font dan warna
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                     image: DecorationImage(
                      image: AssetImage("story4.jpeg"),
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Mengatur teks ke kiri
                  children: [
                    Text(
                      "wooshin_ah",
                      style: TextStyle(fontSize: 14),
                    ), // Mengatur ukuran font
                    SizedBox(height: 5), // Jarak antara dua teks
                    Text(
                      "fairy flies",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ), // Mengatur ukuran font dan warna
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
