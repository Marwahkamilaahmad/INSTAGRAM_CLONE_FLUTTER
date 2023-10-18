import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TimelineStory extends StatelessWidget {
  const TimelineStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView.builder(
        // padding: EdgeInsets,
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.red, Colors.amber],
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  Container(
                    width: 66,
                    height: 66,
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage("story${index + 1}.jpeg"),
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Story ${index + 1}",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class TimelineView extends StatelessWidget {
  const TimelineView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          // appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      child: Image.asset(
                        "instagramLabel.png",
                        width: 100,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_box_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_outline_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.energy_savings_leaf_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                color: Colors.grey.shade300,
                height: 1,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          //Story
          TimelineStory(),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                color: Colors.grey.shade300,
                height: 1,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 5, right: 15, left: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("story7.jpeg"),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("yooyeon_kim"),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.more_vert,
                          size: 24,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "postfeed1.jpeg"), // Sesuaikan dengan path ke gambar Anda
                  fit: BoxFit.cover, // Atur properti sesuai kebutuhan Anda
                ),
              ),
              height: 400,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        size: 28,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        FontAwesomeIcons.comment,
                        size: 23,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.near_me_outlined,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.bookmark_border_rounded,
                        weight: 50,
                        size: 28,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 8, bottom: 20),
            child: Row(
              children: [
                Text(
                  "yooyeon_kim",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("hari ini hari yang cerah bukan ???")
              ],
            ),
          ),
          Column(
            children: [
              Container(
                color: Colors.grey.shade200,
                height: 1,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("story7.jpeg"),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("yooyeon_kim"),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.more_vert,
                          size: 24,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "postfeed2.jpeg"), // Sesuaikan dengan path ke gambar Anda
                  fit: BoxFit.cover, // Atur properti sesuai kebutuhan Anda
                ),
              ),
              height: 400,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        size: 28,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        FontAwesomeIcons.comment,
                        size: 23,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.near_me_outlined,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.bookmark_border_rounded,
                        weight: 50,
                        size: 28,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 8, bottom: 20),
            child: Row(
              children: [
                Text(
                  "yooyeon_kim",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Siang yang cerah, tapi panas :(((")
              ],
            ),
          ),
          Column(
            children: [
              Container(
                color: Colors.grey.shade200,
                height: 1,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("story7.jpeg"),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("yooyeon_kim"),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.more_vert,
                          size: 24,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "postfeed3.jpeg"), // Sesuaikan dengan path ke gambar Anda
                  fit: BoxFit.cover, // Atur properti sesuai kebutuhan Anda
                ),
              ),
              height: 400,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        size: 28,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        FontAwesomeIcons.comment,
                        size: 23,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.near_me_outlined,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.bookmark_border_rounded,
                        weight: 50,
                        size: 28,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 8, bottom: 20),
            child: Row(
              children: [
                Text(
                  "yooyeon_kim",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("sullyoon cantik sekaliii :) aku bangga dengannya")
              ],
            ),
          ),
          Column(
            children: [
              Container(
                color: Colors.grey.shade200,
                height: 1,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("story7.jpeg"),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("yooyeon_kim"),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.more_vert,
                          size: 24,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "postfeed4.jpeg"), // Sesuaikan dengan path ke gambar Anda
                  fit: BoxFit.cover, // Atur properti sesuai kebutuhan Anda
                ),
              ),
              height: 400,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        size: 28,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        FontAwesomeIcons.comment,
                        size: 23,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.near_me_outlined,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.bookmark_border_rounded,
                        weight: 50,
                        size: 28,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 8, bottom: 20),
            child: Row(
              children: [
                Text(
                  "yooyeon_kim",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("kegiatan setelah shooting kami di taman dekat lokasi")
              ],
            ),
          ),
          Column(
            children: [
              Container(
                color: Colors.grey.shade200,
                height: 1,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
        ],
      ),
    );
  }
}
